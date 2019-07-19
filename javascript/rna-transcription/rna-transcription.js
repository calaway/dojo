export const toRna = (sequence) => {
  if (sequence === 'C') {
    return 'G';
  } else if (sequence === 'G') {
    return 'C';
  } else if (sequence === 'T') {
    return 'A';
  } else {
    return '';
  }
};
