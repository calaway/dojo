export class Triangle {
  constructor(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }

  isEquilateral() {
    if (this.a === this.b && this.b === this.c) {
      return true
    }
  }

  isIsosceles() {

  }

  isScalene() {

  }
}
