export const toRna = (sequence) => {
  return sequence.replace(/./g, (nucleobase) => {
    return {
      C: 'G',
      G: 'C',
      T: 'A',
      A: 'U'
    }[nucleobase];
  })
};
