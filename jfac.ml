let rec repeat f n =
  if n > 0 then begin
    f ();
    repeat f (n-1)
  end

let random_elem ls =
  List.nth ls (Random.int (List.length ls))

let user_names = ref ([] : string list)

let sqb b = if b then "TRUE" else "FALSE"

let one_user () =
  let n = Random.bits () in
  let id = "user" ^ string_of_int n in
  let name = "User #" ^ string_of_int n in
  let isPI = Random.bool () in
  Printf.printf "INSERT INTO uw_user(uw_MitId, uw_HumanName, uw_IsAdmin, uw_IsJfac) VALUES('%s', '%s', FALSE, %s);\n"
    id name (sqb isPI);
  user_names := name :: !user_names

let one_restaurant () =
  let n = Random.bits () in
  let n2 = Random.bits () in
  let id = "Restaurant #" ^ string_of_int n in
  let nb = "Neighborhood #" ^ string_of_int n2 in
  Printf.printf "INSERT INTO uw_restaurant(uw_restaurantname, uw_neighborhood, uw_genre, uw_url) VALUES('%s', '%s', 'good stuff', 'http://www.impredicative.com/ur/');\n"
    id nb

let rec all_times n =
  if n <= 0 then
    ()
  else begin
    Printf.printf "INSERT INTO uw_Time(uw_time) VALUES ('2016-04-%02d');\n" n;
    all_times (n - 1)
  end

let main args =
  match args with
  | [|_; users; restaurants|] ->
    Printf.printf "INSERT INTO uw_user VALUES('admin', 'Admin', TRUE, FALSE);\n";
    all_times 30;
    repeat one_user (int_of_string users);
    repeat one_restaurant (int_of_string restaurants)
  | _ ->
    failwith "Wrong number of command-line arguments"

let () = main Sys.argv
