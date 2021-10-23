enum Breakpoints {
  xs,
  sm,
  md,
  lg,
  xl,
}

const Map<Breakpoints, double> defaultBreakpoints = {
  Breakpoints.xs: 0,
  Breakpoints.sm: 480,
  Breakpoints.md: 768,
  Breakpoints.lg: 992,
  Breakpoints.xl: 1200,
};

Breakpoints getCurrentBreakpoint(double screenWidth) {
  if (screenWidth < 480) {
    return Breakpoints.xs;
  }
  if (screenWidth < 768) {
    return Breakpoints.sm;
  }

  if (screenWidth < 992) {
    return Breakpoints.md;
  }

  if (screenWidth < 1200) {
    return Breakpoints.lg;
  }

  return Breakpoints.xl;
}
