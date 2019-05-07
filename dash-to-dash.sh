curl -s http://sanfrancisco.kapeli.com/feeds/zzz/user_contributed/build/index.json  2>/dev/null |
    jq '.[] |map({name: .name , archive: ["http://newyork.kapeli.com/feeds/zzz/user_contributed/build/" , .name, "/", .archive] | join("")})'
