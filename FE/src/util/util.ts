export const threeDigitsComma = (nNum : number) => ("" + nNum).replace(/\B(?=(\d{3})+(?!\d))/g, ",");

export const asyncImport = (path: string) => {
  import(path).then((obj) => {
    console.log("asyncImport", obj)
    return obj
  })
}