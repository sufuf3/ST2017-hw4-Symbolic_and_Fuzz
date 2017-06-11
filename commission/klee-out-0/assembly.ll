; ModuleID = 'commission.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"stock\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"barrel\00", align 1
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
define double @_Z16count_commissioniii(i32 %lock, i32 %stock, i32 %barrel) #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %rank = alloca i32, align 4
  %sale = alloca double, align 8
  %commission = alloca double, align 8
  store i32 %lock, i32* %2, align 4
  store i32 %stock, i32* %3, align 4
  store i32 %barrel, i32* %4, align 4
  store i32 0, i32* %rank, align 4, !dbg !124
  store double 0.000000e+00, double* %sale, align 8, !dbg !125
  store double 0.000000e+00, double* %commission, align 8, !dbg !125
  %5 = load i32* %2, align 4, !dbg !126
  %6 = icmp slt i32 %5, 1, !dbg !126
  %7 = load i32* %3, align 4, !dbg !126
  %8 = icmp slt i32 %7, 1, !dbg !126
  %or.cond = or i1 %6, %8, !dbg !126
  %9 = load i32* %4, align 4, !dbg !126
  %10 = icmp slt i32 %9, 1, !dbg !126
  %or.cond3 = or i1 %or.cond, %10, !dbg !126
  %11 = load i32* %2, align 4, !dbg !126
  %12 = icmp sgt i32 %11, 70, !dbg !126
  %or.cond5 = or i1 %or.cond3, %12, !dbg !126
  %13 = load i32* %3, align 4, !dbg !126
  %14 = icmp sgt i32 %13, 80, !dbg !126
  %or.cond7 = or i1 %or.cond5, %14, !dbg !126
  %15 = load i32* %4, align 4, !dbg !126
  %16 = icmp sgt i32 %15, 90, !dbg !126
  %or.cond9 = or i1 %or.cond7, %16, !dbg !126
  br i1 %or.cond9, label %17, label %18, !dbg !126

; <label>:17                                      ; preds = %0
  store double 0.000000e+00, double* %1, !dbg !128
  br label %29, !dbg !128

; <label>:18                                      ; preds = %0
  %19 = load i32* %2, align 4, !dbg !129
  %20 = mul nsw i32 45, %19, !dbg !129
  %21 = load i32* %3, align 4, !dbg !129
  %22 = mul nsw i32 30, %21, !dbg !129
  %23 = add nsw i32 %20, %22, !dbg !129
  %24 = load i32* %4, align 4, !dbg !129
  %25 = mul nsw i32 25, %24, !dbg !129
  %26 = add nsw i32 %23, %25, !dbg !129
  %27 = sitofp i32 %26 to double, !dbg !129
  store double %27, double* %sale, align 8, !dbg !129
  %28 = load double* %sale, align 8, !dbg !130
  store double %28, double* %1, !dbg !130
  br label %29, !dbg !130

; <label>:29                                      ; preds = %18, %17
  %30 = load double* %1, !dbg !131
  ret double %30, !dbg !131
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: uwtable
define i32 @main() #2 {
  %1 = alloca i32, align 4
  %lock = alloca i32, align 4
  %stock = alloca i32, align 4
  %barrel = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast i32* %lock to i8*, !dbg !132
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)), !dbg !132
  %3 = bitcast i32* %stock to i8*, !dbg !133
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)), !dbg !133
  %4 = bitcast i32* %barrel to i8*, !dbg !134
  call void @klee_make_symbolic(i8* %4, i64 4, i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)), !dbg !134
  %5 = load i32* %lock, align 4, !dbg !135
  %6 = load i32* %stock, align 4, !dbg !135
  %7 = load i32* %barrel, align 4, !dbg !135
  %8 = call double @_Z16count_commissioniii(i32 %5, i32 %6, i32 %7), !dbg !135
  %9 = fptosi double %8 to i32, !dbg !135
  ret i32 %9, !dbg !135
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #4 {
  %1 = icmp eq i64 %z, 0, !dbg !136
  br i1 %1, label %2, label %3, !dbg !136

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([60 x i8]* @.str3, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !138
  unreachable, !dbg !138

; <label>:3                                       ; preds = %0
  ret void, !dbg !139
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !140
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #8, !dbg !140
  %2 = load i32* %x, align 4, !dbg !141, !tbaa !142
  ret i32 %2, !dbg !141
}

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #4 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !146
  br i1 %1, label %3, label %2, !dbg !146

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str147, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str258, i64 0, i64 0)) #7, !dbg !148
  unreachable, !dbg !148

; <label>:3                                       ; preds = %0
  ret void, !dbg !150
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #4 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !151
  br i1 %1, label %3, label %2, !dbg !151

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !153
  unreachable, !dbg !153

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !154
  %5 = icmp eq i32 %4, %end, !dbg !154
  br i1 %5, label %21, label %6, !dbg !154

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !156
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #8, !dbg !156
  %8 = icmp eq i32 %start, 0, !dbg !158
  %9 = load i32* %x, align 4, !dbg !160, !tbaa !142
  br i1 %8, label %10, label %13, !dbg !158

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !160
  %12 = zext i1 %11 to i64, !dbg !160
  call void @klee_assume(i64 %12) #8, !dbg !160
  br label %19, !dbg !162

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !163
  %15 = zext i1 %14 to i64, !dbg !163
  call void @klee_assume(i64 %15) #8, !dbg !163
  %16 = load i32* %x, align 4, !dbg !165, !tbaa !142
  %17 = icmp slt i32 %16, %end, !dbg !165
  %18 = zext i1 %17 to i64, !dbg !165
  call void @klee_assume(i64 %18) #8, !dbg !165
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !166, !tbaa !142
  br label %21, !dbg !166

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !167
}

declare void @klee_assume(i64) #6

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !168
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !168

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !169
  %wide.load = load <16 x i8>* %3, align 1, !dbg !169
  %next.gep.sum279 = or i64 %index, 16, !dbg !169
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !169
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !169
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !169
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !169
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !169
  %next.gep103.sum296 = or i64 %index, 16, !dbg !169
  %7 = getelementptr i8* %destaddr, i64 %next.gep103.sum296, !dbg !169
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !169
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !169
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !170

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
  %10 = add i64 %.01, -1, !dbg !168
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !169
  %12 = load i8* %src.03, align 1, !dbg !169, !tbaa !173
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !169
  store i8 %12, i8* %dest.02, align 1, !dbg !169, !tbaa !173
  %14 = icmp eq i64 %10, 0, !dbg !168
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !168, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !175
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #4 {
  %1 = icmp eq i8* %src, %dst, !dbg !176
  br i1 %1, label %.loopexit, label %2, !dbg !176

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !178
  br i1 %3, label %.preheader, label %18, !dbg !178

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !180
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !180

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
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !180
  %wide.load = load <16 x i8>* %6, align 1, !dbg !180
  %next.gep.sum586 = or i64 %index, 16, !dbg !180
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !180
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !180
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !180
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !180
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !180
  %next.gep110.sum603 = or i64 %index, 16, !dbg !180
  %10 = getelementptr i8* %dst, i64 %next.gep110.sum603, !dbg !180
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !180
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !180
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !182

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
  %13 = add i64 %.02, -1, !dbg !180
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !180
  %15 = load i8* %b.04, align 1, !dbg !180, !tbaa !173
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !180
  store i8 %15, i8* %a.03, align 1, !dbg !180, !tbaa !173
  %17 = icmp eq i64 %13, 0, !dbg !180
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !180, !llvm.loop !183

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !184
  %20 = icmp eq i64 %count, 0, !dbg !186
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !186

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !187
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !184
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
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !186
  %24 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !186
  %25 = bitcast i8* %24 to <16 x i8>*, !dbg !186
  %wide.load434 = load <16 x i8>* %25, align 1, !dbg !186
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !186
  %.sum505 = add i64 %.sum440, -31, !dbg !186
  %26 = getelementptr i8* %src, i64 %.sum505, !dbg !186
  %27 = bitcast i8* %26 to <16 x i8>*, !dbg !186
  %wide.load435 = load <16 x i8>* %27, align 1, !dbg !186
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !186
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !186
  %next.gep333.sum = add i64 %.sum472, -15, !dbg !186
  %28 = getelementptr i8* %dst, i64 %next.gep333.sum, !dbg !186
  %29 = bitcast i8* %28 to <16 x i8>*, !dbg !186
  store <16 x i8> %reverse437, <16 x i8>* %29, align 1, !dbg !186
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !186
  %.sum507 = add i64 %.sum472, -31, !dbg !186
  %30 = getelementptr i8* %dst, i64 %.sum507, !dbg !186
  %31 = bitcast i8* %30 to <16 x i8>*, !dbg !186
  store <16 x i8> %reverse438, <16 x i8>* %31, align 1, !dbg !186
  %index.next234 = add i64 %index212, 32
  %32 = icmp eq i64 %index.next234, %n.vec215
  br i1 %32, label %middle.block210, label %vector.body209, !llvm.loop !188

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
  %33 = add i64 %.16, -1, !dbg !186
  %34 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !186
  %35 = load i8* %b.18, align 1, !dbg !186, !tbaa !173
  %36 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !186
  store i8 %35, i8* %a.17, align 1, !dbg !186, !tbaa !173
  %37 = icmp eq i64 %33, 0, !dbg !186
  br i1 %37, label %.loopexit, label %scalar.ph211, !dbg !186, !llvm.loop !189

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !190
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #4 {
  %1 = icmp eq i64 %len, 0, !dbg !191
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !191

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
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !192
  %wide.load = load <16 x i8>* %3, align 1, !dbg !192
  %next.gep.sum280 = or i64 %index, 16, !dbg !192
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !192
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !192
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !192
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !192
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !192
  %next.gep104.sum297 = or i64 %index, 16, !dbg !192
  %7 = getelementptr i8* %destaddr, i64 %next.gep104.sum297, !dbg !192
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !192
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !192
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !193

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
  %10 = add i64 %.01, -1, !dbg !191
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !192
  %12 = load i8* %src.03, align 1, !dbg !192, !tbaa !173
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !192
  store i8 %12, i8* %dest.02, align 1, !dbg !192, !tbaa !173
  %14 = icmp eq i64 %10, 0, !dbg !191
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !191, !llvm.loop !194

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !191

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !195
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #4 {
  %1 = icmp eq i64 %count, 0, !dbg !196
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !196

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !197
  br label %3, !dbg !196

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !196
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !197
  store volatile i8 %2, i8* %a.02, align 1, !dbg !197, !tbaa !173
  %6 = icmp eq i64 %4, 0, !dbg !196
  br i1 %6, label %._crit_edge, label %3, !dbg !196

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !198
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

!llvm.dbg.cu = !{!0, !13, !23, !36, !47, !59, !78, !92, !106}
!llvm.module.flags = !{!121, !122}
!llvm.ident = !{!123, !123, !123, !123, !123, !123, !123, !123, !123}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ D
!1 = metadata !{metadata !"commission.cpp", metadata !"/home/klee/ST2017-hw4-Symbolic_and_Fuzz/commission"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"count_commission", metadata !"count_commission", metadata !"_Z16count_commissioniii", i32 7, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (i32, i32, i32)* @
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/klee/ST2017-hw4-Symbolic_and_Fuzz/commission/commission.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 20, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !9}
!13 = metadata !{i32 786449, metadata !14, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !15, metadata !2, metadata !2, metadata !""} ; [
!14 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786478, metadata !14, metadata !17, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, null
!17 = metadata !{i32 786473, metadata !14}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786689, metadata !16, metadata !"z", metadata !17, i32 16777228, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!23 = metadata !{i32 786449, metadata !24, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !25, metadata !2, metadata !2, metadata !""} ; [
!24 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_int.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786478, metadata !24, metadata !27, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !33, i32 13} ; [ 
!27 = metadata !{i32 786473, metadata !24}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_int.c]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !9, metadata !30}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{metadata !34, metadata !35}
!34 = metadata !{i32 786689, metadata !26, metadata !"name", metadata !27, i32 16777229, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!35 = metadata !{i32 786688, metadata !26, metadata !"x", metadata !27, i32 14, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!36 = metadata !{i32 786449, metadata !37, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !38, metadata !2, metadata !2, metadata !""} ; [
!37 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786478, metadata !37, metadata !40, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift_che
!40 = metadata !{i32 786473, metadata !37}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null, metadata !43, metadata !43}
!43 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!44 = metadata !{metadata !45, metadata !46}
!45 = metadata !{i32 786689, metadata !39, metadata !"bitWidth", metadata !40, i32 16777236, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!46 = metadata !{i32 786689, metadata !39, metadata !"shift", metadata !40, i32 33554452, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!47 = metadata !{i32 786449, metadata !48, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !49, metadata !2, metadata !2, metadata !""} ; [
!48 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/klee_range.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786478, metadata !48, metadata !51, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metadata !
!51 = metadata !{i32 786473, metadata !48}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!52 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{metadata !9, metadata !9, metadata !9, metadata !30}
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58}
!55 = metadata !{i32 786689, metadata !50, metadata !"start", metadata !51, i32 16777229, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!56 = metadata !{i32 786689, metadata !50, metadata !"end", metadata !51, i32 33554445, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!57 = metadata !{i32 786689, metadata !50, metadata !"name", metadata !51, i32 50331661, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!58 = metadata !{i32 786688, metadata !50, metadata !"x", metadata !51, i32 14, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!59 = metadata !{i32 786449, metadata !60, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !61, metadata !2, metadata !2, metadata !""} ; [
!60 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786478, metadata !60, metadata !63, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !71, i32 12} 
!63 = metadata !{i32 786473, metadata !60}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memcpy.c]
!64 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !66, metadata !67, metadata !69}
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{i32 786454, metadata !60, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!70 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75, metadata !77}
!72 = metadata !{i32 786689, metadata !62, metadata !"destaddr", metadata !63, i32 16777228, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!73 = metadata !{i32 786689, metadata !62, metadata !"srcaddr", metadata !63, i32 33554444, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!74 = metadata !{i32 786689, metadata !62, metadata !"len", metadata !63, i32 50331660, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!75 = metadata !{i32 786688, metadata !62, metadata !"dest", metadata !63, i32 13, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!77 = metadata !{i32 786688, metadata !62, metadata !"src", metadata !63, i32 14, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!78 = metadata !{i32 786449, metadata !79, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !80, metadata !2, metadata !2, metadata !""} ; [
!79 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memmove.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786478, metadata !79, metadata !82, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !86, i32 1
!82 = metadata !{i32 786473, metadata !79}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!83 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !66, metadata !66, metadata !67, metadata !85}
!85 = metadata !{i32 786454, metadata !79, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!87 = metadata !{i32 786689, metadata !81, metadata !"dst", metadata !82, i32 16777228, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!88 = metadata !{i32 786689, metadata !81, metadata !"src", metadata !82, i32 33554444, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!89 = metadata !{i32 786689, metadata !81, metadata !"count", metadata !82, i32 50331660, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!90 = metadata !{i32 786688, metadata !81, metadata !"a", metadata !82, i32 13, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!91 = metadata !{i32 786688, metadata !81, metadata !"b", metadata !82, i32 14, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!92 = metadata !{i32 786449, metadata !93, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !94, metadata !2, metadata !2, metadata !""} ; [
!93 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/mempcpy.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786478, metadata !93, metadata !96, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !100, i32 
!96 = metadata !{i32 786473, metadata !93}        ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/mempcpy.c]
!97 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{metadata !66, metadata !66, metadata !67, metadata !99}
!99 = metadata !{i32 786454, metadata !93, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!101 = metadata !{i32 786689, metadata !95, metadata !"destaddr", metadata !96, i32 16777227, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!102 = metadata !{i32 786689, metadata !95, metadata !"srcaddr", metadata !96, i32 33554443, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!103 = metadata !{i32 786689, metadata !95, metadata !"len", metadata !96, i32 50331659, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!104 = metadata !{i32 786688, metadata !95, metadata !"dest", metadata !96, i32 12, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!105 = metadata !{i32 786688, metadata !95, metadata !"src", metadata !96, i32 13, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!106 = metadata !{i32 786449, metadata !107, i32 1, metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !108, metadata !2, metadata !2, metadata !""} 
!107 = metadata !{metadata !"/home/klee/klee_src/runtime/Intrinsic/memset.c", metadata !"/home/klee/klee_build/klee/runtime/Intrinsic"}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786478, metadata !107, metadata !110, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !114, i32
!110 = metadata !{i32 786473, metadata !107}      ; [ DW_TAG_file_type ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memset.c]
!111 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{metadata !66, metadata !66, metadata !9, metadata !113}
!113 = metadata !{i32 786454, metadata !107, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !118}
!115 = metadata !{i32 786689, metadata !109, metadata !"dst", metadata !110, i32 16777227, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!116 = metadata !{i32 786689, metadata !109, metadata !"s", metadata !110, i32 33554443, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!117 = metadata !{i32 786689, metadata !109, metadata !"count", metadata !110, i32 50331659, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!118 = metadata !{i32 786688, metadata !109, metadata !"a", metadata !110, i32 12, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!120 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!121 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!122 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!123 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!124 = metadata !{i32 9, i32 0, metadata !4, null}
!125 = metadata !{i32 10, i32 0, metadata !4, null}
!126 = metadata !{i32 13, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/ST2017-hw4-Symbolic_and_Fuzz/commission/commission.cpp]
!128 = metadata !{i32 14, i32 0, metadata !127, null}
!129 = metadata !{i32 16, i32 0, metadata !4, null}
!130 = metadata !{i32 17, i32 0, metadata !4, null}
!131 = metadata !{i32 18, i32 0, metadata !4, null}
!132 = metadata !{i32 22, i32 0, metadata !10, null}
!133 = metadata !{i32 23, i32 0, metadata !10, null}
!134 = metadata !{i32 24, i32 0, metadata !10, null}
!135 = metadata !{i32 25, i32 0, metadata !10, null}
!136 = metadata !{i32 13, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !14, metadata !16, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_div_zero_check.c]
!138 = metadata !{i32 14, i32 0, metadata !137, null}
!139 = metadata !{i32 15, i32 0, metadata !16, null}
!140 = metadata !{i32 15, i32 0, metadata !26, null}
!141 = metadata !{i32 16, i32 0, metadata !26, null}
!142 = metadata !{metadata !143, metadata !143, i64 0}
!143 = metadata !{metadata !"int", metadata !144, i64 0}
!144 = metadata !{metadata !"omnipotent char", metadata !145, i64 0}
!145 = metadata !{metadata !"Simple C/C++ TBAA"}
!146 = metadata !{i32 21, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !37, metadata !39, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!148 = metadata !{i32 27, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !37, metadata !147, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_overshift_check.c]
!150 = metadata !{i32 29, i32 0, metadata !39, null}
!151 = metadata !{i32 16, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !48, metadata !50, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!153 = metadata !{i32 17, i32 0, metadata !152, null}
!154 = metadata !{i32 19, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !48, metadata !50, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!156 = metadata !{i32 22, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !48, metadata !155, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!158 = metadata !{i32 25, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !48, metadata !157, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!160 = metadata !{i32 26, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !48, metadata !159, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!162 = metadata !{i32 27, i32 0, metadata !161, null}
!163 = metadata !{i32 28, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !48, metadata !159, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/klee_range.c]
!165 = metadata !{i32 29, i32 0, metadata !164, null}
!166 = metadata !{i32 32, i32 0, metadata !157, null}
!167 = metadata !{i32 34, i32 0, metadata !50, null}
!168 = metadata !{i32 16, i32 0, metadata !62, null}
!169 = metadata !{i32 17, i32 0, metadata !62, null}
!170 = metadata !{metadata !170, metadata !171, metadata !172}
!171 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!172 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!173 = metadata !{metadata !144, metadata !144, i64 0}
!174 = metadata !{metadata !174, metadata !171, metadata !172}
!175 = metadata !{i32 18, i32 0, metadata !62, null}
!176 = metadata !{i32 16, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !79, metadata !81, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!178 = metadata !{i32 19, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !79, metadata !81, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!180 = metadata !{i32 20, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !79, metadata !179, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!182 = metadata !{metadata !182, metadata !171, metadata !172}
!183 = metadata !{metadata !183, metadata !171, metadata !172}
!184 = metadata !{i32 22, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !79, metadata !179, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/klee/klee_build/klee/runtime/Intrinsic//home/klee/klee_src/runtime/Intrinsic/memmove.c]
!186 = metadata !{i32 24, i32 0, metadata !185, null}
!187 = metadata !{i32 23, i32 0, metadata !185, null}
!188 = metadata !{metadata !188, metadata !171, metadata !172}
!189 = metadata !{metadata !189, metadata !171, metadata !172}
!190 = metadata !{i32 28, i32 0, metadata !81, null}
!191 = metadata !{i32 15, i32 0, metadata !95, null}
!192 = metadata !{i32 16, i32 0, metadata !95, null}
!193 = metadata !{metadata !193, metadata !171, metadata !172}
!194 = metadata !{metadata !194, metadata !171, metadata !172}
!195 = metadata !{i32 17, i32 0, metadata !95, null}
!196 = metadata !{i32 13, i32 0, metadata !109, null}
!197 = metadata !{i32 14, i32 0, metadata !109, null}
!198 = metadata !{i32 15, i32 0, metadata !109, null}
