type t = R | R2 | R'
        | B | B2 | B'
        | L | L2 | L'
        | F | F2 | F'
        | U | U2 | U'
        | D | D2 | D'
        [@@deriving compare, sexp]

let all_turns = [R; R2; R';
                B; B2; B';
                L; L2; L';
                F; F2; F';
                U; U2; U';
                D; D2; D']

let to_string (turn: t) = turn |> sexp_of_t |> Core.Sexp.to_string