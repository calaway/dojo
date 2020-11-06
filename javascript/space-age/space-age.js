export const age = (planet, ageInSeconds) => {
  const secondsPerDay = 31557600;
  return Math.round((ageInSeconds / secondsPerDay) * 100) / 100;
};
