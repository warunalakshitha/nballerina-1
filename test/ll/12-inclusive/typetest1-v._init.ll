%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
%Type0 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]}
%Type1 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x i32]}
@.subtype0 = internal constant %Type0 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.subtype1 = internal constant %Type1 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 2, [2 x i32] [i32 0, i32 1]}, align 8
@.member0 = internal constant {i32, i32, [2 x %UniformSubtype*]} {i32 2099107, i32 786432, [2 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type0* @.subtype0 to %UniformSubtype*), %UniformSubtype* bitcast(%Type1* @.subtype1 to %UniformSubtype*)]}
@_Bi04root0 = constant {i32, i32, i64, [2 x i64]} {i32 0, i32 2, i64 ptrtoint({i32, i32, [2 x %UniformSubtype*]}* @.member0 to i64), [2 x i64] [i64 257, i64 513]}
@_Bi04root4 = constant {i32, i32, i64, [2 x i64]} {i32 1, i32 2, i64 ptrtoint({i32, i32, [2 x %UniformSubtype*]}* @.member0 to i64), [2 x i64] [i64 259, i64 515]}
@_Bi04root5 = constant {i32, i32, i64, [0 x i64]} {i32 2, i32 0, i64 16773119, [0 x i64] []}
@.subtype2 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 1, [1 x i32] [i32 0]}, align 8
@_Bt04root1 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [1 x i32]}* @.subtype2 to %UniformSubtype*)]}
@.subtype3 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x i32]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 2, [2 x i32] [i32 0, i32 1]}, align 8
@_Bt04root2 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x i32]}* @.subtype3 to %UniformSubtype*)]}
@.subtype4 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@_Bt04root3 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]}* @.subtype4 to %UniformSubtype*)]}
@.subtype5 = internal constant {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32} {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_map_subtype_contains, i32 8386559}, align 8
@_Bt04root6 = constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast({i1(%UniformSubtype*, i8 addrspace(1)*)*, i32}* @.subtype5 to %UniformSubtype*)]}
declare i1 @_bal_precomputed_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare i1 @_bal_map_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}