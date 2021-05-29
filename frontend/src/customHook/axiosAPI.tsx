import axios from 'axios'
async function getData() {
  const response = await axios.get(
    `http://13.125.140.183/search/prices?check-in=2021-01-02&check-out=2021-06-04`
  )
  return response
}

export default getData
