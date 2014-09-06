#!/bin/sh

show_hr()
{
	printf -- "--------------------"
	printf -- "--------------------"
	printf -- "--------------------"
	printf "\n"
}

strip()
{
	gsed -e "s/^\s\+//g" -e "s/\s\+$//g"
}

printf "总提交数: "
printf "$(git log v0.1.. --oneline | wc -l | strip )"
printf "\n"
show_hr

printf "贡献者排名"
printf "(total: $(git log v0.1.. --no-merges --pretty="%an <%ae>" | sort | uniq -c | sort -u | wc -l | strip)):"
printf "\n"
git log v0.1.. --no-merges --pretty="%an <%ae>" | sort | uniq -c | sort -u | tac | nl
show_hr

printf "整合者排名"
printf "(total: $(git log v0.1.. --merges --pretty="%an <%ae>" | sort | uniq -c | sort -u | wc -l | strip)):"
printf "\n"
git log v0.1.. --merges --pretty="%cn <%ce>" | sort | uniq -c | sort -u | tac | nl
show_hr
