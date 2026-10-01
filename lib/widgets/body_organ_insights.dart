// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../constants/app_colors.dart';

// class BodyOrganInsights extends StatefulWidget {
//   const BodyOrganInsights({super.key});

//   @override
//   State<BodyOrganInsights> createState() =>
//       _BodyOrganInsightsState();
// }

// class _BodyOrganInsightsState extends State<BodyOrganInsights> {
//   String? selectedOrgan;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.fromLTRB(
//         14.w,
//         14.h,
//         14.w,
//         16.h,
//       ),
//       decoration: BoxDecoration(
//         color: AppColors.white,
//         borderRadius: BorderRadius.circular(12.r),
//         border: Border.all(
//           color: AppColors.outlineGrey,
//           width: 0.7,
//         ),
//         boxShadow: const [
//           BoxShadow(
//             color: Color(0x0A000000),
//             blurRadius: 12,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Body Organ Insights',
//             style: TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 16.sp,
//               color: AppColors.textBlack,
//             ),
//           ),

//           SizedBox(height: 3.h),

//           Text(
//             'Explore how your body benefits from staying sober.',
//             style: TextStyle(
//               fontSize: 12.sp,
//               height: 1.35,
//               color: AppColors.textGrey,
//             ),
//           ),

//           SizedBox(height: 12.h),

//           Center(
//             child: GestureDetector(
//               behavior: HitTestBehavior.opaque,
//               onTapDown: (details) {
//                 final renderBox =
//                     context.findRenderObject() as RenderBox;

//                 final localPosition =
//                     renderBox.globalToLocal(
//                   details.globalPosition,
//                 );

//                 _handleTap(localPosition);
//               },
//               child: SizedBox(
//                 width: 260.w,
//                 height: 300.h,
//                 child: CustomPaint(
//                   painter: HumanBodyPainter(
//                     selectedOrgan: selectedOrgan,
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           SizedBox(height: 8.h),

//           Center(
//             child: AnimatedSwitcher(
//               duration: const Duration(milliseconds: 220),
//               child: selectedOrgan == null
//                   ? Text(
//                       'Tap an organ to explore',
//                       key: const ValueKey('empty'),
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         color: AppColors.textLightGrey,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     )
//                   : Container(
//                       key: ValueKey(selectedOrgan),
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 14.w,
//                         vertical: 7.h,
//                       ),
//                       decoration: BoxDecoration(
//                         color: AppColors.primary.withOpacity(0.08),
//                         borderRadius: BorderRadius.circular(20.r),
//                       ),
//                       child: Text(
//                         'Selected: ${selectedOrgan!.toUpperCase()}',
//                         style: TextStyle(
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.w700,
//                           color: AppColors.primary,
//                         ),
//                       ),
//                     ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _handleTap(Offset position) {
//     final x = position.dx;
//     final y = position.dy;

//     if (y >= 18.h &&
//         y <= 58.h &&
//         x >= 100.w &&
//         x <= 160.w) {
//       setState(() {
//         selectedOrgan = 'brain';
//       });
//       return;
//     }

//     if (y > 72.h &&
//         y <= 120.h &&
//         x >= 75.w &&
//         x <= 185.w) {
//       if (x > 125.w &&
//           x < 165.w &&
//           y > 88.h &&
//           y < 112.h) {
//         setState(() {
//           selectedOrgan = 'heart';
//         });
//       } else {
//         setState(() {
//           selectedOrgan = 'lungs';
//         });
//       }
//       return;
//     }

//     if (y > 122.h &&
//         y <= 155.h &&
//         x >= 88.w &&
//         x <= 172.w) {
//       setState(() {
//         selectedOrgan = 'liver';
//       });
//       return;
//     }

//     if (y > 160.h &&
//         y <= 195.h &&
//         x >= 82.w &&
//         x <= 178.w) {
//       setState(() {
//         selectedOrgan = 'kidneys';
//       });
//       return;
//     }

//     setState(() {
//       selectedOrgan = null;
//     });
//   }
// }

// class HumanBodyPainter extends CustomPainter {
//   final String? selectedOrgan;

//   HumanBodyPainter({
//     required this.selectedOrgan,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final width = size.width;
//     final height = size.height;

//     final bodyOutlinePaint = Paint()
//       ..color = AppColors.primary.withOpacity(0.30)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2.2;

//     final bodyOutlinePath = Path();

//     bodyOutlinePath.addOval(
//       Rect.fromLTWH(
//         width * 0.35,
//         height * 0.04,
//         width * 0.30,
//         height * 0.12,
//       ),
//     );

//     bodyOutlinePath.moveTo(
//       width * 0.43,
//       height * 0.16,
//     );

//     bodyOutlinePath.lineTo(
//       width * 0.43,
//       height * 0.20,
//     );

//     bodyOutlinePath.moveTo(
//       width * 0.57,
//       height * 0.16,
//     );

//     bodyOutlinePath.lineTo(
//       width * 0.57,
//       height * 0.20,
//     );

//     bodyOutlinePath.moveTo(
//       width * 0.43,
//       height * 0.20,
//     );

//     bodyOutlinePath.quadraticBezierTo(
//       width * 0.20,
//       height * 0.21,
//       width * 0.18,
//       height * 0.30,
//     );

//     bodyOutlinePath.quadraticBezierTo(
//       width * 0.22,
//       height * 0.50,
//       width * 0.28,
//       height * 0.65,
//     );

//     bodyOutlinePath.moveTo(
//       width * 0.57,
//       height * 0.20,
//     );

//     bodyOutlinePath.quadraticBezierTo(
//       width * 0.80,
//       height * 0.21,
//       width * 0.82,
//       height * 0.30,
//     );

//     bodyOutlinePath.quadraticBezierTo(
//       width * 0.78,
//       height * 0.50,
//       width * 0.72,
//       height * 0.65,
//     );

//     bodyOutlinePath.lineTo(
//       width * 0.68,
//       height * 0.92,
//     );

//     bodyOutlinePath.moveTo(
//       width * 0.28,
//       height * 0.65,
//     );

//     bodyOutlinePath.lineTo(
//       width * 0.32,
//       height * 0.92,
//     );

//     canvas.drawPath(
//       bodyOutlinePath,
//       bodyOutlinePaint,
//     );

//     Paint organPaint(
//       String organ,
//       Color color,
//     ) {
//       final selected = selectedOrgan == organ;

//       return Paint()
//         ..color = selected
//             ? color
//             : color.withOpacity(0.28)
//         ..style = PaintingStyle.fill
//         ..maskFilter = selected
//             ? const MaskFilter.blur(
//                 BlurStyle.solid,
//                 4,
//               )
//             : null;
//     }

//     // Brain
//     final brain = Path()
//       ..addOval(
//         Rect.fromLTWH(
//           width * 0.38,
//           height * 0.06,
//           width * 0.24,
//           height * 0.08,
//         ),
//       );

//     canvas.drawPath(
//       brain,
//       organPaint(
//         'brain',
//         Colors.pinkAccent,
//       ),
//     );

//     // Lungs
//     final leftLung = Path()
//       ..addRRect(
//         RRect.fromRectAndRadius(
//           Rect.fromLTWH(
//             width * 0.32,
//             height * 0.24,
//             width * 0.14,
//             height * 0.12,
//           ),
//           const Radius.circular(15),
//         ),
//       );

//     final rightLung = Path()
//       ..addRRect(
//         RRect.fromRectAndRadius(
//           Rect.fromLTWH(
//             width * 0.54,
//             height * 0.24,
//             width * 0.14,
//             height * 0.12,
//           ),
//           const Radius.circular(15),
//         ),
//       );

//     canvas.drawPath(
//       leftLung,
//       organPaint(
//         'lungs',
//         Colors.cyanAccent,
//       ),
//     );

//     canvas.drawPath(
//       rightLung,
//       organPaint(
//         'lungs',
//         Colors.cyanAccent,
//       ),
//     );

//     // Heart
//     final heart = Path()
//       ..addOval(
//         Rect.fromLTWH(
//           width * 0.47,
//           height * 0.28,
//           width * 0.10,
//           height * 0.06,
//         ),
//       );

//     canvas.drawPath(
//       heart,
//       organPaint(
//         'heart',
//         Colors.redAccent,
//       ),
//     );

//     // Liver
//     final liver = Path()
//       ..moveTo(
//         width * 0.35,
//         height * 0.39,
//       )
//       ..lineTo(
//         width * 0.62,
//         height * 0.39,
//       )
//       ..lineTo(
//         width * 0.58,
//         height * 0.45,
//       )
//       ..lineTo(
//         width * 0.38,
//         height * 0.44,
//       )
//       ..close();

//     canvas.drawPath(
//       liver,
//       organPaint(
//         'liver',
//         Colors.orangeAccent,
//       ),
//     );

//     // Kidneys
//     final leftKidney = Path()
//       ..addOval(
//         Rect.fromLTWH(
//           width * 0.35,
//           height * 0.47,
//           width * 0.08,
//           height * 0.06,
//         ),
//       );

//     final rightKidney = Path()
//       ..addOval(
//         Rect.fromLTWH(
//           width * 0.57,
//           height * 0.47,
//           width * 0.08,
//           height * 0.06,
//         ),
//       );

//     canvas.drawPath(
//       leftKidney,
//       organPaint(
//         'kidneys',
//         Colors.purpleAccent,
//       ),
//     );

//     canvas.drawPath(
//       rightKidney,
//       organPaint(
//         'kidneys',
//         Colors.purpleAccent,
//       ),
//     );
//   }

//   @override
//   bool shouldRepaint(
//     covariant HumanBodyPainter oldDelegate,
//   ) {
//     return oldDelegate.selectedOrgan != selectedOrgan;
//   }
// }