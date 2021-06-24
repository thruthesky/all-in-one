String uviText(num? uvi) {
  if (uvi == null)
    return '...';
  else if (uvi < 3)
    return '낮음';
  else if (uvi < 6)
    return '보통';
  else if (uvi < 8)
    return '높음';
  else if (uvi < 11)
    return '매우높음';
  else
    return '위험';
}
