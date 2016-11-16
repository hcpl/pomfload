# For jq 1.3 compatibility
def join(str):
    reduce .[1:][] as $item
        (.[0]|tostring;
         . + str + ($item|tostring));

# For jq 1.3 compatibility
def any:
    reduce .[] as $item (false; . or $item);

.default as $default
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
    | if .key == $default or ($aliases and ($aliases|map(.==$default)|any)) then
          $result + " (default)"
      else
          $result
      end
