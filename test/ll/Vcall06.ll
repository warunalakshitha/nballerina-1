declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = call i64 @_B_foobar ()
  store i64 %_6, i64* %_0
  %_7 = load i64, i64* %_0
  %_8 = call i64 @_B_sum (i64 23, i64 %_7)
  store i64 %_8, i64* %_1
  %_9 = load i64, i64* %_1
  %_10 = call i64 @_B_baz (i64 %_9)
  store i64 %_10, i64* %_2
  %_11 = load i64, i64* %_2
  %_12 = call i64 @_B_bar (i64 %_11)
  store i64 %_12, i64* %_3
  %_13 = load i64, i64* %_3
  %_14 = call i64 @_B_foo (i64 %_13)
  store i64 %_14, i64* %_4
  %_15 = load i64, i64* %_4
  %_16 = call i8* @_bal_alloc (i64 8)
  %_17 = bitcast i8* %_16 to i64*
  store i64 %_15, i64* %_17, align 8
  %_18 = getelementptr i8, i8* %_16, i64 144115188075855872
  call void @_Bio__println (i8* %_18)
  store i8* null, i8** %_5
  ret void
}
define internal i64 @_B_foo (i64 %_0) {
  %x = alloca i64
  store i64 %_0, i64* %x
  %_1 = load i64, i64* %x
  ret i64 %_1
}
define internal i64 @_B_bar (i64 %_0) {
  %x = alloca i64
  store i64 %_0, i64* %x
  %_1 = load i64, i64* %x
  ret i64 %_1
}
define internal i64 @_B_baz (i64 %_0) {
  %x = alloca i64
  store i64 %_0, i64* %x
  %_1 = load i64, i64* %x
  ret i64 %_1
}
define internal i64 @_B_foobar () {
  ret i64 12
}
define internal i64 @_B_sum (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_4 = load i64, i64* %x
  %_5 = load i64, i64* %y
  %_6 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_4, i64 %_5)
  %_7 = extractvalue {i64, i1} %_6, 1
  br i1 %_7, label %L3, label %L2
L1:
  %_10 = load i64, i64* %_3
  call void @_bal_panic (i64 %_10)
  unreachable
L2:
  %_8 = extractvalue {i64, i1} %_6, 0
  store i64 %_8, i64* %_2
  %_9 = load i64, i64* %_2
  ret i64 %_9
L3:
  store i64 1, i64* %_3
  br label %L1
}
