export const toRna = (sequence) => (
  sequence.replace(/./g, (nucleobase) => translationMap[nucleobase])
);

const translationMap = {
  C: 'G',
  G: 'C',
  T: 'A',
  A: 'U'
}
