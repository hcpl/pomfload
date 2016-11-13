# For jq 1.3 compatibility
def join(str):
    reduce .[1:][] as $item
        (.[0]|tostring;
         . + str + ($item|tostring));

.default as $default
| {} as $found_default
| .sites
  | to_entries[]
    | "  * \(.key)" as $result
    | .value.aliases as $aliases
    | (if $aliases then
           if $aliases|length == 0 then
               $result
           elif $aliases|length == 1 then
               $result + " (alias: \($aliases[0]))"
           else
               $result + ($aliases | join(", ") | " (aliases: \(.))")
           end
       else
           $result
       end) as $result
    | if .key == $default or ($aliases and ($aliases[]|.==$default)) then
          $result + " (default)"
      else
          $result
      end
