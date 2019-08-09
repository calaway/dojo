export const toRna = (sequence) => (
  sequence.replace(/./g, (nucleobase) => (
    {
      C: 'G',
      G: 'C',
      T: 'A',
      A: 'U'
    }[nucleobase]
  ))
);
