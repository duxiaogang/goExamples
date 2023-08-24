package main

import (
	"encoding/json"
	"fmt"
	"github.com/invopop/jsonschema"
)

/*
type SampleUser struct {
	ID          int                    `json:"id"`
	Name        string                 `json:"name" jsonschema:"title=the name,description=The name of a friend,example=joe,example=lucy,default=alex"`
	Friends     []int                  `json:"friends,omitempty" jsonschema_description:"The list of IDs, omitted when empty"`
	Tags        map[string]interface{} `json:"tags,omitempty" jsonschema_extras:"a=b,foo=bar,foo=bar1"`
	BirthDate   time.Time              `json:"birth_date,omitempty" jsonschema:"oneof_required=date"`
	YearOfBirth string                 `json:"year_of_birth,omitempty" jsonschema:"oneof_required=year"`
	Metadata    interface{}            `json:"metadata,omitempty" jsonschema:"oneof_type=string;array"`
	FavColor    string                 `json:"fav_color,omitempty" jsonschema:"enum=red,enum=green,enum=blue"`
}

func ExampleReflect() {
	s := jsonschema.Reflect(&SampleUser{})
	data, err := json.MarshalIndent(s, "", "  ")
	if err != nil {
		panic(err.Error())
	}
	fmt.Println(string(data))
}
*/

type Say struct {
	Who   string
	Words string
}

type SayList []Say

type Summon struct {
	Type  string
	Count int
}

type SummonList []Summon

func DumpSchema(data any) error {
	schema := jsonschema.Reflect(data)
	result, err := json.MarshalIndent(schema, "", "\t")
	if err != nil {
		return fmt.Errorf("DumpSchema, MarshalIndent, err=%v", err)
	}
	fmt.Println(string(result))
	return nil
}

func main() {
	//ExampleReflect()

	/*
		schema := jsonschema.Reflect(&SayList{})
		data, err := json.MarshalIndent(schema, "", "\t")
		//data, err := json.Marshal(schema)
		if err != nil {
			panic(err)
		}
		fmt.Println(string(data))
	*/

	DumpSchema(SayList{})

	x := `{
"SayList": [
{
"Who": "小帅",
"Words": "这些强盗终于被我解决了。我必须继续前进，寻找公主。"
},
{
"Who": "公主",
"Words": "感谢你，小帅。你是我的救星，我永远感激你。"
}
]
}`

	type tmp struct {
		SayList
	}
	t := tmp{}

	err := json.Unmarshal([]byte(x), &t)
	if err != nil {
		panic(err)
	}

	//_ = x
	//sayList = append(sayList, Say{Who: "who", Words: "words"})
	//output, err := json.MarshalIndent(sayList, "", "\t")
	//if err != nil {
	//	panic(err)
	//}
	//fmt.Println(string(output))
}
