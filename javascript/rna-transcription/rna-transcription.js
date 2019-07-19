export const toRna = (sequence) => {
  if (sequence === 'C') {
    return 'G';
  } else if (sequence === 'G') {
    return 'C';
  } else {
    return '';
  }
};
