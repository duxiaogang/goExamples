package main

import (
	"encoding/json"
	"fmt"
	"reflect"
)

func main() {
	jsonStr := `{
    "thoughts": {
        "text": "I think I should attempt to fold a paper airplane using the instructions I found on the website.",
        "reasoning": "The website provided step-by-step instructions for folding a paper airplane, so I should be able to follow along and fold one with the children.",
        "plan": "- Attempt to fold a paper airplane",
        "criticism": "I need to be patient and take my time when folding the paper airplane so that I can explain the steps to the children and help them follow along.",
        "speak": "I will attempt to fold a paper airplane using the instructions I found on the website."
    },
    "command": {
        "name": "write_to_file",
        "args": {
            "filename": "paper_airplane_instructions.txt",
            "text": "To fold a paper airplane, follow these steps:\n1, ...;\n2, ...;\n3, ...;"
        }
    }
}
`
	jsonStr = `{
    "thoughts": {
        "text": "We can use the get_sum_of_2_num command to calculate the sum of 21+2+53+4. To do this, we'll need to use the command multiple times. I can save the intermediate results that we calculate in a file to manage my short term mem better. Also, if the input is changed to have more than 2 numbers, we can still use the same command and apply it multiple times.",
        "reasoning": "By breaking down the problem into smaller parts that we can solve using the get_sum_of_2_num command, we can effectively calculate the sum of any number of operands. Also, saving the intermediate results will help us prevent overload on our short term mem.",
        "plan": "- Break down the problem into smaller parts that can be solved using the get_sum_of_2_num command.\n- Save the intermediate results in a file.\n- Use the command multiple times to calculate the sum of any number of operands.",
        "criticism": "I should be mindful of the file size, as it might grow too large and become difficult to manage. Also, I should ensure that each step in the process is done without any errors.",
        "speak": "To calculate the sum of 21+2+53+4, I will use the get_sum_of_2_num command multiple times. This will allow me to break down the problem into manageable parts, and save the intermediate results in a file to better manage my mem."
    },
    "command": {
        "name": "get_sum_of_2_num",
        "args": {
            "num1": 21,
            "num2": 2
        }
    }
}
`
	type command struct {
		Name string         `json:"name"`
		Args map[string]any `json:"args"`
	}

	type Content struct {
		Thoughts interface{} `json:"thoughts"`
		Command  command     `json:"command"`
	}

	var x Content
	err := json.Unmarshal([]byte(jsonStr), &x)
	if err != nil {
		panic(err)
	}
	fmt.Println(x.Command.Name)
	//fmt.Println(x.C mmand.Args)
	for k, v := range x.Command.Args {
		fmt.Println(k)
		fmt.Println(v)
		fmt.Println(reflect.TypeOf(v))
	}
}
