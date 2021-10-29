let positive_negative_v1 (a, b, c : int * int * int) : int * int =
   let (sum_a_pos, sum_a_neg) : int * int =
      if a > 0 
      then (a, 0)
      else (0, a)
   in
      let (sum_b_pos, sum_b_neg) : int * int =
         if b > 0
         then (sum_a_pos + b, sum_a_neg)
         else (sum_a_pos, sum_a_neg + b)
      in
         if c > 0
         then (sum_b_pos + c, sum_b_neg)
         else (sum_b_pos, sum_b_neg + c)
;;
