curl -s http://sanfrancisco.kapeli.com/feeds/zzz/user_contributed/build/index.json  2>/dev/null |
    jq '[.docsets | to_entries[] |{name: .value.name , archive: ["http://newyork.kapeli.com/feeds/zzz/user_contributed/build/" , .key, "/", .value.archive] | join("")}]'
