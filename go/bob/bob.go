package bob

import (
	"regexp"
	"strings"
)

func Hey(remark string) string {
	if match, _ := regexp.Match(`^\s*$`, []byte(remark)); match {
		return "Fine. Be that way!"
	} else if match, _ := regexp.Match("^[^a-zA-Z]+$", []byte(remark)); match && strings.HasSuffix(remark, "?") {
		return "Sure."
	} else if strings.ToUpper(remark) == remark && strings.HasSuffix(remark, "?") {
		return "Calm down, I know what I'm doing!"
	} else if strings.HasSuffix(strings.Trim(remark, " "), "?") {
		return "Sure."
	} else if match, _ := regexp.Match("^[^a-zA-Z]+$", []byte(remark)); match {
		return "Whatever."
	} else if strings.ToUpper(remark) == remark {
		return "Whoa, chill out!"
	} else {
		return "Whatever."
	}
}
