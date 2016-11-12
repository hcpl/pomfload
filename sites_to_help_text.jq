# For jq 1.3 compatibility
def join(str):
    reduce .[1:][] as $item
        (.[0]|tostring;
         . + str + ($item|tostring));

to_entries[]
| "  * \(.key)" as $result
| if .value.aliases then
      .value.aliases as $aliases
      | if $aliases|length == 0 then
            $result
        elif $aliases|length == 1 then
            $result + " (alias: \($aliases[0]))"
        else
            $result +  ($aliases | join(", ") | " (aliases: \(.))")
        end
  else
      $result
  end
