let run_prompt () = print_endline "Running prog"
let run_file x = Printf.printf "%s\n" x

let () = 
        let argLen = Array.length Sys.argv 
        in
        match argLen with
        | 0|1 -> run_prompt ()
        | 2   -> run_file Sys.argv.(1)
        | _   -> print_endline "Usage: ocamlVox [script]"
