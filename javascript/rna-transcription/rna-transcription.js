export const toRna = (sequence) => {
  let chars = sequence.split('');

  chars = chars.map(char => {
    return translate(char);
  });

  return chars.join('');
};

function translate(char) {
  if (char === 'C') {
    return 'G';
  } else if (char === 'G') {
    return 'C';
  } else if (char === 'T') {
    return 'A';
  } else if (char === 'A') {
    return 'U';
  } else {
    return '';
  }
};
