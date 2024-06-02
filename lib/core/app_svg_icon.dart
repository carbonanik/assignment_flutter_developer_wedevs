// ignore_for_file: constant_identifier_names

import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvgIcon extends StatelessWidget {
  final String icon;
  final Color? color;
  final double? size;
  final EdgeInsets? padding;

  const AppSvgIcon(
    this.icon, {
    this.color,
    this.size = 20,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SvgPicture.string(
        icon,
        colorFilter: ColorFilter.mode(color ?? iconColor, BlendMode.srcIn),
        width: size,
        height: size,
        alignment: Alignment.center,
      ),
    );
  }
}

class SvgIcons {
  static const String email =
      '<svg width="22" height="18" viewBox="0 0 22 18" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect x="1.61108" y="1.30554" width="19.4444" height="15.625" rx="3.17674" stroke="#7C8592" stroke-width="1.38889"/><path d="M3 2.34723L10.159 9.50626C10.8076 10.1548 11.8591 10.1548 12.5076 9.50626L19.6667 2.34723" stroke="#7C8592" stroke-width="1.65035"/></svg>';

  static const String lock =
      '<svg width="22" height="24" viewBox="0 0 22 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect x="0.958252" y="6.9028" width="19.4444" height="15.625" rx="3.17674" stroke="#7C8592" stroke-width="1.65035"/><path fill-rule="evenodd" clip-rule="evenodd" d="M8.54782 1.69446H12.8131C13.9365 1.69446 14.8471 2.60512 14.8471 3.72849V6.90279H6.51379V3.72849C6.51379 2.60512 7.42446 1.69446 8.54782 1.69446Z" stroke="#7C8592" stroke-width="1.65035"/><circle cx="10.6804" cy="14.5417" r="2.43056" stroke="#7C8592" stroke-width="1.65035"/></svg>';

  static const String eye_off =
      '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M11.83 9L15 12.16V12a3 3 0 0 0-3-3zm-4.3.8l1.55 1.55c-.05.21-.08.42-.08.65a3 3 0 0 0 3 3c.22 0 .44-.03.65-.08l1.55 1.55c-.67.33-1.41.53-2.2.53a5 5 0 0 1-5-5c0-.79.2-1.53.53-2.2M2 4.27l2.28 2.28l.45.45C3.08 8.3 1.78 10 1 12c1.73 4.39 6 7.5 11 7.5c1.55 0 3.03-.3 4.38-.84l.43.42L19.73 22L21 20.73L3.27 3M12 7a5 5 0 0 1 5 5c0 .64-.13 1.26-.36 1.82l2.93 2.93c1.5-1.25 2.7-2.89 3.43-4.75c-1.73-4.39-6-7.5-11-7.5c-1.4 0-2.74.25-4 .7l2.17 2.15C10.74 7.13 11.35 7 12 7"/></svg>';

  static const String eye =
      '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"><path fill="currentColor" d="M10 14.5a4.5 4.5 0 1 1 4.5-4.5a4.5 4.5 0 0 1-4.5 4.5M10 3C3 3 0 10 0 10s3 7 10 7s10-7 10-7s-3-7-10-7"/><circle cx="10" cy="10" r="2.5" fill="currentColor"/></svg>';

  static const person =
      '<svg width="20" height="25" viewBox="0 0 20 25" fill="none" xmlns="http://www.w3.org/2000/svg"> <circle cx="10.1792" cy="5.55963" r="4.03185" stroke="#7C8592" stroke-width="1.70857"/><rect x="1.29175" y="13.4065" width="17.8559" height="10.4381" rx="5.21903" stroke="#7C8592" stroke-width="1.70857"/></svg>';

  static const camera =
      '<svg width="14" height="11" viewBox="0 0 14 11" fill="none" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" clip-rule="evenodd" d="M10.8592 2.01628H12.4425C13.1682 2.01628 13.7619 2.62174 13.7619 3.36176V9.41645C13.7619 10.1565 13.1682 10.7619 12.4425 10.7619H1.88695C1.16125 10.7619 0.567505 10.1565 0.567505 9.41645V3.36176C0.567505 2.62174 1.16125 2.01628 1.88695 2.01628H3.47028C3.68799 2.01628 3.92232 1.84405 3.99133 1.63349L4.40062 0.380972C4.46937 0.170269 4.70396 -0.00195312 4.92167 -0.00195312H9.40778C9.62549 -0.00195312 9.85982 0.170269 9.92883 0.380838L10.3381 1.63335C10.4069 1.84405 10.6415 2.01628 10.8592 2.01628ZM5.18556 6.05273C5.18556 4.9384 6.07157 4.03451 7.16473 4.03451C8.25762 4.03451 9.14389 4.9384 9.14389 6.05273C9.14389 7.16747 8.25762 8.07096 7.16473 8.07096C6.07157 8.07096 5.18556 7.16747 5.18556 6.05273ZM7.16473 9.41645C5.34297 9.41645 3.86612 7.91045 3.86612 6.05273C3.86612 4.19516 5.34297 2.68902 7.16473 2.68902C8.98622 2.68902 10.4633 4.19516 10.4633 6.05273C10.4633 7.91045 8.98622 9.41645 7.16473 9.41645ZM11.5189 3.83174C11.5189 4.09196 11.7258 4.30266 11.9807 4.30266C12.2357 4.30266 12.4425 4.09196 12.4425 3.83174C12.4425 3.57179 12.2359 3.36082 11.9807 3.36082C11.7258 3.36082 11.5189 3.57179 11.5189 3.83174Z" fill="white"/></svg>';
}
