import queryString from 'query-string'
import axios from 'axios'
import useAxios from '../../customHook/useAxios'
function Login() {
  let getUserInfoJWT: string | null
  const GetCode = async () => {
    console.log(1)
    const result = queryString.parse(window.location.search)
    const url = `http://13.125.140.183/v1/auth/desktop?code=${result.code}`
    const codeResponse = await axios.post(url)
    // if (loading) return <div>Loading...💭</div>
    // if (error) return <div>에러발생</div>
    // if (!data) return null
    console.log(codeResponse)
    // getUserInfoJWT = codeResponse?.jwt
    const response = await axios({
      url: 'http://13.125.140.183/v1/users/git-info',
      method: 'get',
      headers: { Authroization: getUserInfoJWT },
    })
    // const json = await response.json()

    console.log(123456)
    console.log(response)
  }
  GetCode()
  return <div>Loading...💭</div>
}

export default Login
