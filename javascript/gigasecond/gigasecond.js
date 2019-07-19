export const gigasecond = (date) => {
  return new Date(date.getTime() + (1000 * (10 ** 9)))
};
