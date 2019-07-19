export const toRna = (sequence) => {
  let chars = sequence.split('');

  chars = chars.map(char => {
    return translationMap[char];
  });

  return chars.join('');
};

const translationMap = {
  C: 'G',
  G: 'C',
  T: 'A',
  A: 'U'
}
