const person = {
  name: 'Boson',
  age: 20,
  address: {
    city: 'Chongqing',
    area: 'Nanan'
  }
}
// 通过解构赋值的方式获取对象中所有属性
const {name,age,address:{city,area}}=person;
console.log(name,age,city,area);
