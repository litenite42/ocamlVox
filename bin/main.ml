let read_lines file =
let ch = open_in_bin file in
    let s = really_input_string ch (in_channel_length ch) in
    close_in ch;
    s
 
let run fileText = print_endline fileText

let rec run_prompt () = 
        Printf.printf "> ";
match read_line () with
| "" -> ()
| x -> run x; run_prompt ()


let run_file x = (*Printf.printf "%s\n" x*)
        read_lines x |> run

let () = 
        let argLen = Array.length Sys.argv 
        in
        match argLen with
        | 0|1 -> run_prompt ()
        | 2   -> run_file Sys.argv.(1)
        | _   -> print_endline "Usage: ocamlVox [script]";
