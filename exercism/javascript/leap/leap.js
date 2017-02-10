var Year = function (year) {
  this.year = year
}

Year.prototype.isLeap = function () {
  if (this.year % 4 === 0) {
    return true
  } else {
    return false
  }
}

module.exports = Year
