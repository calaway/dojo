export class Triangle {
  constructor(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  isEquilateral() {
    if (this.a !== 0 && this.a === this.b && this.b === this.c) {
      return true;
    } else {
      return false;
    }
  }

  isIsosceles() {
    if (this.a === this.b || this.b === this.c || this.c === this.a) {
      return true;
    } else {
      return false;
    }
  }

  isScalene() {

  }
}
