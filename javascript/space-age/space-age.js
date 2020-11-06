export const age = (planet, ageInSeconds) => {
  const secondsPerDay = 31557600;
  const earthYears = ageInSeconds / secondsPerDay;

  const orbitalRatio = {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  };

  return roundToTwoDecimals(earthYears / orbitalRatio[planet]);
};

const roundToTwoDecimals = (number) => {
  return Math.round(number * 100) / 100
};
