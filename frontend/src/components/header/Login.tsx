import queryString from 'query-string'
import { useEffect } from 'react'
import { RouteComponentProps } from 'react-router-dom'
import axios from 'axios'
import { defaultUrl } from '../../customHook/axiosAPI'
function Login({ history }: RouteComponentProps) {
  const GetCode = async () => {
    let dataJWT
    const parsing = queryString.parse(window.location.search)
    try {
      let response = await axios.post(`${defaultUrl}/v1/auth/desktop?code=${parsing.code}`)
      const { jwt } = await response.data
      dataJWT = jwt
    } catch (e) {
      console.error(e)
    }

    let userInfo
    try {
      const response = await axios({
        url: 'http://13.125.140.183/v1/users/git-info',
        method: 'get',
        headers: {
          Authorization: dataJWT,
        },
      })
      userInfo = response.data
      const { avatar_url, email, login: id } = userInfo
      localStorage.setItem('isLogin', 'true')
      localStorage.setItem('ID', id)
      localStorage.setItem('avatar_url', avatar_url)
      localStorage.setItem('email', email)
      history.push('/')
    } catch (e) {
      console.error(e)
    }
  }
  useEffect(() => {
    GetCode()
  }, [])
  return (
    <>
      <div>Loading...💭</div>
    </>
  )
}

export default Login
