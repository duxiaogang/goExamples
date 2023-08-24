package main

import (
	"context"
	"fmt"
	"github.com/sashabaranov/go-openai"
	"log"
)

func main() {
	// API_KEY为公司内部分配的KEY，如需申请请联系 @樱木 @Jayce
	API_KEY := "92fd307677e6468eb259f1a549f0e4e8"

	// 新建一个默认配置，API_KEY 为分配的内部KEY
	config := openai.DefaultConfig(API_KEY)

	// 设置代理 将 baseURl 设置为代理地址 对应：https://api.openai.com/v1
	//config.BaseURL = "http://openai-proxy.funplus-inc.com/v1"
	config.BaseURL = "https://user-platform.openai.azure.com"

	// 根据配置新建一个客户端
	client := openai.NewClientWithConfig(config)

	// 其它用方法同官方
	message := openai.ChatCompletionMessage{
		Role:    "user",
		Content: "你好",
	}
	req := openai.ChatCompletionRequest{
		Model:    openai.GPT4,
		Messages: []openai.ChatCompletionMessage{message},
		Stream:   true,
	}
	ctx := context.Background()
	stream, err := client.CreateChatCompletionStream(ctx, req)
	if err != nil {
		log.Fatal(err)
	}
	// 支持流式处理
	for {
		resp, err := stream.Recv()
		if err != nil {
			log.Fatal("err:", err)
		}
		fmt.Print(resp.Choices[0].Delta.Content)
	}
}
