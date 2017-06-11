; ModuleID = 'triangle.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str3 = private unnamed_addr constant [60 x i8] c"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str14 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str25 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str147 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str258 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"/home/klee/klee_src/runtime/Intrinsic/klee_range.c\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_Z13triangle_typeiii(i32 %a, i32 %b, i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %a, i32* %2, align 4
  store i32 %b, i32* %3, align 4
  store i32 %c, i32* %4, align 4
  %5 = load i32* %2, align 4, !dbg !123
  %6 = icmp slt i32 %5, 1, !dbg !123
  %7 = load i32* %3, align 4, !dbg !123
  %8 = icmp slt i32 %7, 1, !dbg !123
  %or.cond = or i1 %6, %8, !dbg !123
  %9 = load i32* %4, align 4, !dbg !123
  %10 = icmp slt i32 %9, 1, !dbg !123
  %or.cond3 = or i1 %or.cond, %10, !dbg !123
  %11 = load i32* %2, align 4, !dbg !123
  %12 = icmp sgt i32 %11, 200, !dbg !123
  %or.cond5 = or i1 %or.cond3, %12, !dbg !123
  %13 = load i32* %3, align 4, !dbg !123
  %14 = icmp sgt i32 %13, 200, !dbg !123
  %or.cond7 = or i1 %or.cond5, %14, !dbg !123
  %15 = load i32* %4, align 4, !dbg !123
  %16 = icmp sgt i32 %15, 200, !dbg !123
  %or.cond9 = or i1 %or.cond7, %16, !dbg !123
  br i1 %or.cond9, label %17, label %18, !dbg !123

; <label>:17                                      ; preds = %0
  store i32 0, i32* %1, !dbg !125
  br label %64, !dbg !125

; <label>:18                                      ; preds = %0
  %19 = load i32* %2, align 4, !dbg !126
  %20 = load i32* %3, align 4, !dbg !126
  %21 = add nsw i32 %19, %20, !dbg !126
  %22 = load i32* %4, align 4, !dbg !126
  %23 = icmp sgt i32 %21, %22, !dbg !126
  br i1 %23, label %24, label %36, !dbg !126

; <label>:24                                      ; preds = %18
  %25 = load i32* %2, align 4, !dbg !126
  %26 = load i32* %4, align 4, !dbg !126
  %27 = add nsw i32 %25, %26, !dbg !126
  %28 = load i32* %3, align 4, !dbg !126
  %29 = icmp sgt i32 %27, %28, !dbg !126
  br i1 %29, label %30, label %36, !dbg !126

; <label>:30                                      ; preds = %24
  %31 = load i32* %3, align 4, !dbg !126
  %32 = load i32* %4, align 4, !dbg !126
  %33 = add nsw i32 %31, %32, !dbg !126
  %34 = load i32* %2, align 4, !dbg !126
  %35 = icmp sgt i32 %33, %34, !dbg !126
  br i1 %35, label %37, label %36, !dbg !126

; <label>:36                                      ; preds = %30, %24, %18
  store i32 1, i32* %1, !dbg !128
  br label %64, !dbg !128

; <label>:37                                      ; preds = %30
  %38 = load i32* %2, align 4, !dbg !129
  %39 = load i32* %3, align 4, !dbg !129
  %40 = icmp eq i32 %38, %39, !dbg !129
  br i1 %40, label %49, label %41, !dbg !129

; <label>:41                                      ; preds = %37
  %42 = load i32* %3, align 4, !dbg !129
  %43 = load i32* %4, align 4, !dbg !129
  %44 = icmp eq i32 %42, %43, !dbg !129
  br i1 %44, label %49, label %45, !dbg !129

; <label>:45                                      ; preds = %41
  %46 = load i32* %4, align 4, !dbg !129
  %47 = load i32* %2, align 4, !dbg !129
  %48 = icmp eq i32 %46, %47, !dbg !129
  br i1 %48, label %49, label %63, !dbg !129

; <label>:49                                      ; preds = %45, %41, %37
  %50 = load i32* %2, align 4, !dbg !131
  %51 = load i32* %3, align 4, !dbg !131
  %52 = icmp eq i32 %50, %51, !dbg !131
  br i1 %52, label %53, label %62, !dbg !131

; <label>:53                                      ; preds = %49
  %54 = load i32* %3, align 4, !dbg !131
  %55 = load i32* %4, align 4, !dbg !131
  %56 = icmp eq i32 %54, %55, !dbg !131
  br i1 %56, label %57, label %62, !dbg !131

; <label>:57                                      ; preds = %53
  %58 = load i32* %4, align 4, !dbg !131
  %59 = load i32* %2, align 4, !dbg !131
  %60 = icmp eq i32 %58, %59, !dbg !131
  br i1 %60, label %61, label %62, !dbg !131

; <label>:61                                      ; preds = %57
  store i32 2, i32* %1, !dbg !134
  br label %64, !dbg !134

; <label>:62                                      ; preds = %57, %53, %49
  store i32 3, i32* %1, !dbg !135
  br label %64, !dbg !135

; <label>:63                                      ; preds = %45
  store i32 4, i32* %1, !dbg !136
  br label %64, !dbg !136

; <label>:64                                      ; preds = %63, %62, %61, %36, %17
  %65 = load i32* %1, !dbg !137
  ret i32 %65, !dbg !137
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: uwtable
define i32 @main() #2 {
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast i32* %a to i8*, !dbg !138
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0)), !dbg !138
  %3 = bitcast i32* %b to i8*, !dbg !139
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)), !dbg !139
  %4 = bitcast i32* %c to i8*, !dbg !140
  call void @klee_make_symbolic(i8* %4, i64 4, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !140
  %5 = load i32* %a, align 4, !dbg !141
  %6 = load i32* %b, align 4, !dbg !141
  %7 = load i32* %c, align 4, !dbg !141
  %8 = call i32 @_Z13triangle_typeiii(i32 %5, i32 %6, i32 %7), !dbg !141
  ret i32 %8, !dbg !141
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !142
  br i1 %1, label %2, label %3, !dbg !142

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([60 x i8]* @.str3, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !144
  unreachable, !dbg !144

; <label>:3                                       ; preds = %0
  ret void, !dbg !145
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !146
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #8, !dbg !146
  %2 = load i32* %x, align 4, !dbg !147, !tbaa !148
  ret i32 %2, !dbg !147
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !152
  br i1 %1, label %3, label %2, !dbg !152

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str258, i64 0, i64 0)) #7, !dbg !154
  unreachable, !dbg !154

; <label>:3                                       ; preds = %0
  ret void, !dbg !156
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !157
  br i1 %1, label %3, label %2, !dbg !157

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !159
  unreachable, !dbg !159

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !160
  %5 = icmp eq i32 %4, %end, !dbg !160
  br i1 %5, label %21, label %6, !dbg !160

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !162
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #8, !dbg !162
  %8 = icmp eq i32 %start, 0, !dbg !164
  %9 = load i32* %x, align 4, !dbg !166, !tbaa !148
  br i1 %8, label %10, label %13, !dbg !164

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !166
  %12 = zext i1 %11 to i64, !dbg !166
  call void @klee_assume(i64 %12) #8, !dbg !166
  br label %19, !dbg !168

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !169
  %15 = zext i1 %14 to i64, !dbg !169
  call void @klee_assume(i64 %15) #8, !dbg !169
  %16 = load i32* %x, align 4, !dbg !171, !tbaa !148
  %17 = icmp slt i32 %16, %end, !dbg !171
  %18 = zext i1 %17 to i64, !dbg !171
  call void @klee_assume(i64 %18) #8, !dbg !171
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !172, !tbaa !148
  br label %21, !dbg !172

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !173
}

declare void @klee_assume(i64) #6

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !174
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !174

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep4 = getelementptr i8* %srcaddr, i64 %2
  %scevgep = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep, %srcaddr
  %bound0 = icmp uge i8* %scevgep4, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end6 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep103 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !175
  %wide.load = load <16 x i8>* %3, align 1, !dbg !175
  %next.gep.sum279 = or i64 %index, 16, !dbg !175
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !175
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !175
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !175
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !175
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !175
  %next.gep103.sum296 = or i64 %index, 16, !dbg !175
  %7 = getelementptr i8* %destaddr, i64 %next.gep103.sum296, !dbg !175
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !175
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !175
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val5 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end6, %vector.body ]
  %resume.val7 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val5, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val7, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !174
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !175
  %12 = load i8* %src.03, align 1, !dbg !175, !tbaa !179
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !175
  store i8 %12, i8* %dest.02, align 1, !dbg !175, !tbaa !179
  %14 = icmp eq i64 %10, 0, !dbg !174
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !174, !llvm.loop !180

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !181
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !182
  br i1 %1, label %.loopexit, label %2, !dbg !182

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !184
  br i1 %3, label %.preheader, label %18, !dbg !184

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !186
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !186

.lr.ph.preheader:                                 ; preds = %.preheader
  %n.vec = and i64 %count, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %5 = add i64 %count, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep11 = getelementptr i8* %src, i64 %5
  %scevgep = getelementptr i8* %dst, i64 %5
  %bound1 = icmp uge i8* %scevgep, %src
  %bound0 = icmp uge i8* %scevgep11, %dst
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %src, i64 %n.vec
  %ptr.ind.end13 = getelementptr i8* %dst, i64 %n.vec
  %rev.ind.end = sub i64 %count, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %src, i64 %index
  %next.gep110 = getelementptr i8* %dst, i64 %index
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !186
  %wide.load = load <16 x i8>* %6, align 1, !dbg !186
  %next.gep.sum586 = or i64 %index, 16, !dbg !186
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !186
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !186
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !186
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !186
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !186
  %next.gep110.sum603 = or i64 %index, 16, !dbg !186
  %10 = getelementptr i8* %dst, i64 %next.gep110.sum603, !dbg !186
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !186
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !186
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %src, %.lr.ph.preheader ], [ %src, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val12 = phi i8* [ %dst, %.lr.ph.preheader ], [ %dst, %vector.memcheck ], [ %ptr.ind.end13, %vector.body ]
  %resume.val14 = phi i64 [ %count, %.lr.ph.preheader ], [ %count, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %b.04 = phi i8* [ %14, %.lr.ph ], [ %resume.val, %middle.block ]
  %a.03 = phi i8* [ %16, %.lr.ph ], [ %resume.val12, %middle.block ]
  %.02 = phi i64 [ %13, %.lr.ph ], [ %resume.val14, %middle.block ]
  %13 = add i64 %.02, -1, !dbg !186
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !186
  %15 = load i8* %b.04, align 1, !dbg !186, !tbaa !179
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !186
  store i8 %15, i8* %a.03, align 1, !dbg !186, !tbaa !179
  %17 = icmp eq i64 %13, 0, !dbg !186
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !186, !llvm.loop !189

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !190
  %20 = icmp eq i64 %count, 0, !dbg !192
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !192

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !193
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !190
  %n.vec215 = and i64 %count, -32
  %cmp.zero217 = icmp eq i64 %n.vec215, 0
  %23 = add i64 %count, -1
  br i1 %cmp.zero217, label %middle.block210, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph9
  %scevgep219 = getelementptr i8* %src, i64 %23
  %scevgep218 = getelementptr i8* %dst, i64 %23
  %bound1221 = icmp ule i8* %scevgep219, %dst
  %bound0220 = icmp ule i8* %scevgep218, %src
  %memcheck.conflict223 = and i1 %bound0220, %bound1221
  %.sum = sub i64 %19, %n.vec215
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %.sum
  %.sum439 = sub i64 %19, %n.vec215
  %rev.ptr.ind.end229 = getelementptr i8* %dst, i64 %.sum439
  %rev.ind.end231 = sub i64 %count, %n.vec215
  br i1 %memcheck.conflict223, label %middle.block210, label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.memcheck224
  %index212 = phi i64 [ %index.next234, %vector.body209 ], [ 0, %vector.memcheck224 ]
  %.sum440 = sub i64 %19, %index212
  %.sum472 = sub i64 %19, %index212
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !192
  %24 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !192
  %25 = bitcast i8* %24 to <16 x i8>*, !dbg !192
  %wide.load434 = load <16 x i8>* %25, align 1, !dbg !192
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !192
  %.sum505 = add i64 %.sum440, -31, !dbg !192
  %26 = getelementptr i8* %src, i64 %.sum505, !dbg !192
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !192
  %wide.load435 = load <16 x i8>* %27, align 1, !dbg !192
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !192
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !192
  %next.gep333.sum = add i64 %.sum472, -15, !dbg !192
  %28 = getelementptr i8* %dst, i64 %next.gep333.sum, !dbg !192
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !192
  store <16 x i8> %reverse437, <16 x i8>* %29, align 1, !dbg !192
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !192
  %.sum507 = add i64 %.sum472, -31, !dbg !192
  %30 = getelementptr i8* %dst, i64 %.sum507, !dbg !192
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !192
  store <16 x i8> %reverse438, <16 x i8>* %31, align 1, !dbg !192
  %index.next234 = add i64 %index212, 32
  %32 = icmp eq i64 %index.next234, %n.vec215
  br i1 %32, label %middle.block210, label %vector.body209, !llvm.loop !194

middle.block210:                                  ; preds = %vector.body209, %vector.memcheck224, %.lr.ph9
  %resume.val225 = phi i8* [ %21, %.lr.ph9 ], [ %21, %vector.memcheck224 ], [ %rev.ptr.ind.end, %vector.body209 ]
  %resume.val227 = phi i8* [ %22, %.lr.ph9 ], [ %22, %vector.memcheck224 ], [ %rev.ptr.ind.end229, %vector.body209 ]
  %resume.val230 = phi i64 [ %count, %.lr.ph9 ], [ %count, %vector.memcheck224 ], [ %rev.ind.end231, %vector.body209 ]
  %new.indc.resume.val232 = phi i64 [ 0, %.lr.ph9 ], [ 0, %vector.memcheck224 ], [ %n.vec215, %vector.body209 ]
  %cmp.n233 = icmp eq i64 %new.indc.resume.val232, %count
  br i1 %cmp.n233, label %.loopexit, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211, %middle.block210
  %b.18 = phi i8* [ %34, %scalar.ph211 ], [ %resume.val225, %middle.block210 ]
  %a.17 = phi i8* [ %36, %scalar.ph211 ], [ %resume.val227, %middle.block210 ]
  %.16 = phi i64 [ %33, %scalar.ph211 ], [ %resume.val230, %middle.block210 ]
  %33 = add i64 %.16, -1, !dbg !192
  %34 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !192
  %35 = load i8* %b.18, align 1, !dbg !192, !tbaa !179
  %36 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !192
  store i8 %35, i8* %a.17, align 1, !dbg !192, !tbaa !179
  %37 = icmp eq i64 %33, 0, !dbg !192
  br i1 %37, label %.loopexit, label %scalar.ph211, !dbg !192, !llvm.loop !195

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !196
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !197
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !197

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep5 = getelementptr i8* %srcaddr, i64 %2
  %scevgep4 = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep4, %srcaddr
  %bound0 = icmp uge i8* %scevgep5, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end7 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep104 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !198
  %wide.load = load <16 x i8>* %3, align 1, !dbg !198
  %next.gep.sum280 = or i64 %index, 16, !dbg !198
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !198
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !198
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !198
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !198
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !198
  %next.gep104.sum297 = or i64 %index, 16, !dbg !198
  %7 = getelementptr i8* %destaddr, i64 %next.gep104.sum297, !dbg !198
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !198
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !198
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val6 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end7, %vector.body ]
  %resume.val8 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val6, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val8, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !197
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !198
  %12 = load i8* %src.03, align 1, !dbg !198, !tbaa !179
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !198
  store i8 %12, i8* %dest.02, align 1, !dbg !198, !tbaa !179
  %14 = icmp eq i64 %10, 0, !dbg !197
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !197, !llvm.loop !200

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !197

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !201
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !202
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !202

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !203
  br label %3, !dbg !202

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !202
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !203
  store volatile i8 %2, i8* %a.02, align 1, !dbg !203, !tbaa !179
  %6 = icmp eq i64 %4, 0, !dbg !202
  br i1 %6, label %._crit_edge, label %3, !dbg !202

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !204
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false"
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !12, !22, !35, !46, !58, !77, !91, !105}
!llvm.module.flags = !{!120, !121}
!llvm.ident = !{!122, !122, !122, !122, !122, !122, !122, !122, !122}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ D
!1 = metadata !{metadata !"triangle.cpp", metadata !"/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"triangle_type", metadata !"triangle_type", metadata !"_Z13triangle_typeiii", i32 5, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @_Z13triangle
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle/triangle.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram 
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786449, metadata !13, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !14, metadata !2, metadata !2, metadata !""} ; [
!13 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786478, metadata !13, metadata !16, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!16 = metadata !{i32 786473, metadata !13}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786689, metadata !15, metadata !"z", metadata !16, i32 16777228, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!22 = metadata !{i32 786449, metadata !23, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !24, metadata !2, metadata !2, metadata !""} ; [
!23 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_int.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786478, metadata !23, metadata !26, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !32, i32 13} ; [ 
!26 = metadata !{i32 786473, metadata !23}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_int.c]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !8, metadata !29}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!31 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!32 = metadata !{metadata !33, metadata !34}
!33 = metadata !{i32 786689, metadata !25, metadata !"name", metadata !26, i32 16777229, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!34 = metadata !{i32 786688, metadata !25, metadata !"x", metadata !26, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!35 = metadata !{i32 786449, metadata !36, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !37, metadata !2, metadata !2, metadata !""} ; [
!36 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786478, metadata !36, metadata !39, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!39 = metadata !{i32 786473, metadata !36}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!40 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !42, metadata !42}
!42 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!43 = metadata !{metadata !44, metadata !45}
!44 = metadata !{i32 786689, metadata !38, metadata !"bitWidth", metadata !39, i32 16777236, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!45 = metadata !{i32 786689, metadata !38, metadata !"shift", metadata !39, i32 33554452, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!46 = metadata !{i32 786449, metadata !47, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !48, metadata !2, metadata !2, metadata !""} ; [
!47 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_range.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786478, metadata !47, metadata !50, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!50 = metadata !{i32 786473, metadata !47}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !8, metadata !8, metadata !8, metadata !29}
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57}
!54 = metadata !{i32 786689, metadata !49, metadata !"start", metadata !50, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!55 = metadata !{i32 786689, metadata !49, metadata !"end", metadata !50, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!56 = metadata !{i32 786689, metadata !49, metadata !"name", metadata !50, i32 50331661, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!57 = metadata !{i32 786688, metadata !49, metadata !"x", metadata !50, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!58 = metadata !{i32 786449, metadata !59, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !60, metadata !2, metadata !2, metadata !""} ; [
!59 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786478, metadata !59, metadata !62, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !70, i32 12} 
!62 = metadata !{i32 786473, metadata !59}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memcpy.c]
!63 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !65, metadata !65, metadata !66, metadata !68}
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!67 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{i32 786454, metadata !59, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!69 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !76}
!71 = metadata !{i32 786689, metadata !61, metadata !"destaddr", metadata !62, i32 16777228, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!72 = metadata !{i32 786689, metadata !61, metadata !"srcaddr", metadata !62, i32 33554444, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!73 = metadata !{i32 786689, metadata !61, metadata !"len", metadata !62, i32 50331660, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!74 = metadata !{i32 786688, metadata !61, metadata !"dest", metadata !62, i32 13, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!76 = metadata !{i32 786688, metadata !61, metadata !"src", metadata !62, i32 14, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!77 = metadata !{i32 786449, metadata !78, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !79, metadata !2, metadata !2, metadata !""} ; [
!78 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memmove.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786478, metadata !78, metadata !81, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !85, i32 1
!81 = metadata !{i32 786473, metadata !78}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!82 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !65, metadata !65, metadata !66, metadata !84}
!84 = metadata !{i32 786454, metadata !78, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!86 = metadata !{i32 786689, metadata !80, metadata !"dst", metadata !81, i32 16777228, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!87 = metadata !{i32 786689, metadata !80, metadata !"src", metadata !81, i32 33554444, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!88 = metadata !{i32 786689, metadata !80, metadata !"count", metadata !81, i32 50331660, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!89 = metadata !{i32 786688, metadata !80, metadata !"a", metadata !81, i32 13, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!90 = metadata !{i32 786688, metadata !80, metadata !"b", metadata !81, i32 14, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!91 = metadata !{i32 786449, metadata !92, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !93, metadata !2, metadata !2, metadata !""} ; [
!92 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/mempcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786478, metadata !92, metadata !95, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !96, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !99, i32 1
!95 = metadata !{i32 786473, metadata !92}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/mempcpy.c]
!96 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{metadata !65, metadata !65, metadata !66, metadata !98}
!98 = metadata !{i32 786454, metadata !92, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !104}
!100 = metadata !{i32 786689, metadata !94, metadata !"destaddr", metadata !95, i32 16777227, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!101 = metadata !{i32 786689, metadata !94, metadata !"srcaddr", metadata !95, i32 33554443, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!102 = metadata !{i32 786689, metadata !94, metadata !"len", metadata !95, i32 50331659, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!103 = metadata !{i32 786688, metadata !94, metadata !"dest", metadata !95, i32 12, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!104 = metadata !{i32 786688, metadata !94, metadata !"src", metadata !95, i32 13, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!105 = metadata !{i32 786449, metadata !106, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !107, metadata !2, metadata !2, metadata !""} 
!106 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memset.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786478, metadata !106, metadata !109, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !113, i32
!109 = metadata !{i32 786473, metadata !106}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memset.c]
!110 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !65, metadata !65, metadata !8, metadata !112}
!112 = metadata !{i32 786454, metadata !106, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117}
!114 = metadata !{i32 786689, metadata !108, metadata !"dst", metadata !109, i32 16777227, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!115 = metadata !{i32 786689, metadata !108, metadata !"s", metadata !109, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!116 = metadata !{i32 786689, metadata !108, metadata !"count", metadata !109, i32 50331659, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!117 = metadata !{i32 786688, metadata !108, metadata !"a", metadata !109, i32 12, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!119 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!120 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!121 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!122 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!123 = metadata !{i32 6, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle/triangle.cpp]
!125 = metadata !{i32 7, i32 0, metadata !124, null}
!126 = metadata !{i32 8, i32 0, metadata !127, null} ; [ DW_TAG_imported_declaration ]
!127 = metadata !{i32 786443, metadata !1, metadata !4, i32 8, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle/triangle.cpp]
!128 = metadata !{i32 9, i32 0, metadata !127, null}
!129 = metadata !{i32 10, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !4, i32 10, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle/triangle.cpp]
!131 = metadata !{i32 11, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !133, i32 11, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle/triangle.cpp]
!133 = metadata !{i32 786443, metadata !1, metadata !130, i32 10, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/ST2017-hw4-Symbolic_and_Fuzz/triangle/triangle.cpp]
!134 = metadata !{i32 12, i32 0, metadata !132, null}
!135 = metadata !{i32 14, i32 0, metadata !132, null}
!136 = metadata !{i32 16, i32 0, metadata !4, null}
!137 = metadata !{i32 17, i32 0, metadata !4, null}
!138 = metadata !{i32 21, i32 0, metadata !9, null}
!139 = metadata !{i32 22, i32 0, metadata !9, null}
!140 = metadata !{i32 23, i32 0, metadata !9, null}
!141 = metadata !{i32 24, i32 0, metadata !9, null}
!142 = metadata !{i32 13, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !13, metadata !15, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!144 = metadata !{i32 14, i32 0, metadata !143, null}
!145 = metadata !{i32 15, i32 0, metadata !15, null}
!146 = metadata !{i32 15, i32 0, metadata !25, null}
!147 = metadata !{i32 16, i32 0, metadata !25, null}
!148 = metadata !{metadata !149, metadata !149, i64 0}
!149 = metadata !{metadata !"int", metadata !150, i64 0}
!150 = metadata !{metadata !"omnipotent char", metadata !151, i64 0}
!151 = metadata !{metadata !"Simple C/C++ TBAA"}
!152 = metadata !{i32 21, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !36, metadata !38, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!154 = metadata !{i32 27, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !36, metadata !153, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!156 = metadata !{i32 29, i32 0, metadata !38, null}
!157 = metadata !{i32 16, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !47, metadata !49, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!159 = metadata !{i32 17, i32 0, metadata !158, null}
!160 = metadata !{i32 19, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !47, metadata !49, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!162 = metadata !{i32 22, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !47, metadata !161, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!164 = metadata !{i32 25, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !47, metadata !163, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!166 = metadata !{i32 26, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !47, metadata !165, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!168 = metadata !{i32 27, i32 0, metadata !167, null}
!169 = metadata !{i32 28, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !47, metadata !165, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!171 = metadata !{i32 29, i32 0, metadata !170, null}
!172 = metadata !{i32 32, i32 0, metadata !163, null}
!173 = metadata !{i32 34, i32 0, metadata !49, null}
!174 = metadata !{i32 16, i32 0, metadata !61, null}
!175 = metadata !{i32 17, i32 0, metadata !61, null}
!176 = metadata !{metadata !176, metadata !177, metadata !178}
!177 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!178 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!179 = metadata !{metadata !150, metadata !150, i64 0}
!180 = metadata !{metadata !180, metadata !177, metadata !178}
!181 = metadata !{i32 18, i32 0, metadata !61, null}
!182 = metadata !{i32 16, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !78, metadata !80, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!184 = metadata !{i32 19, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !78, metadata !80, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!186 = metadata !{i32 20, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !78, metadata !185, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!188 = metadata !{metadata !188, metadata !177, metadata !178}
!189 = metadata !{metadata !189, metadata !177, metadata !178}
!190 = metadata !{i32 22, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !78, metadata !185, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!192 = metadata !{i32 24, i32 0, metadata !191, null}
!193 = metadata !{i32 23, i32 0, metadata !191, null}
!194 = metadata !{metadata !194, metadata !177, metadata !178}
!195 = metadata !{metadata !195, metadata !177, metadata !178}
!196 = metadata !{i32 28, i32 0, metadata !80, null}
!197 = metadata !{i32 15, i32 0, metadata !94, null}
!198 = metadata !{i32 16, i32 0, metadata !94, null}
!199 = metadata !{metadata !199, metadata !177, metadata !178}
!200 = metadata !{metadata !200, metadata !177, metadata !178}
!201 = metadata !{i32 17, i32 0, metadata !94, null}
!202 = metadata !{i32 13, i32 0, metadata !108, null}
!203 = metadata !{i32 14, i32 0, metadata !108, null}
!204 = metadata !{i32 15, i32 0, metadata !108, null}
