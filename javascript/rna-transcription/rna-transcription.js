export const toRna = (sequence) => {
  return sequence
           .split('')
           .map(char => translationMap[char])
           .join('')
};

const translationMap = {
  C: 'G',
  G: 'C',
  T: 'A',
  A: 'U'
}
