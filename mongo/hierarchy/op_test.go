package hierarchy

import (
	"context"
	"fmt"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"math/rand"
	"testing"
)

type Node struct {
	Left  *Node
	Right *Node
	Data  string
}

func makeTree(depth int) (*Node, int) {
	nd := &Node{Data: fmt.Sprintf("%d", rand.Intn(1000*1000*1000))}
	if depth <= 1 {
		return nd, 1
	}
	var lc, rc int
	nd.Left, lc = makeTree(depth - 1)
	nd.Right, rc = makeTree(depth - 1)
	return nd, lc + rc + 1
}

func randPath(maxDepth int) string {
	d := rand.Intn(maxDepth)
	path := ""
	for i := 0; i < d; i++ {
		lOrR := rand.Intn(2)
		if lOrR == 0 {
			path += "left."
		} else {
			path += "right."
		}
	}
	path += "data"
	return path
}

func TestTraditional(t *testing.T) {
	depth := 8
	tree, count := makeTree(depth)
	fmt.Println(count)

	ctx := context.Background()
	cli, err := mongo.Connect(ctx, options.Client().ApplyURI("mongodb://127.0.0.1:27017"))
	if err != nil {
		panic(err)
	}
	defer func() {
		err = cli.Disconnect(ctx)
		if err != nil {
			panic(err)
		}
	}()

	coll := cli.Database("duDB").Collection("hierarchy")
	ir, err := coll.InsertOne(ctx, tree)
	if err != nil {
		panic(err)
	}

	filter := bson.D{{"_id", ir.InsertedID}}

	m := make(map[string]struct{})
	for {
		p := randPath(depth)
		m[p] = struct{}{}
		if len(m) == count/10 {
			break
		}
	}

	update := bson.D{}
	for p, _ := range m {
		//fmt.Println("path:", p)
		update = append(update, bson.E{p, rand.Intn(1000 * 1000)})
	}
	//fmt.Println(len(update))
	ur, err := coll.UpdateOne(ctx, filter, bson.D{{"$set", update}})
	if err != nil {
		panic(err)
	}
	fmt.Println(ur)
}
