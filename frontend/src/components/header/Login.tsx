import queryString from 'query-string'
import { useEffect } from 'react'
import styled from 'styled-components'
import { RouteComponentProps } from 'react-router-dom'
import axios from 'axios'
import { defaultUrl } from '../../customHook/axiosAPI'

const GetCode = async () => {
  let dataJWT
  const parsing = queryString.parse(window.location.search)
  try {
    let response = await axios.post(`${defaultUrl}/v1/auth/desktop?code=${parsing.code}`)
    const { jwt } = await response.data
    dataJWT = jwt
  } catch (e) {
    console.error(e)
  } finally {
    return dataJWT;
  }
}

//{ history }: RouteComponentProps
const GetUserInfo =  async (jwt:Promise<string>) =>{

  let userInfo
  try {
    const response = await axios({
      url: `${defaultUrl}/v1/users/git-info`,
      method: 'get',
      headers: {
        Authorization: jwt,
      },
    })
    userInfo = response.data
    console.log(userInfo)
    const { avatar_url, email, login: id } = userInfo
    localStorage.setItem('isLogin', 'true')
    localStorage.setItem('ID', id)
    localStorage.setItem('avatar_url', avatar_url)
    localStorage.setItem('email', email)

  } catch (e) {
    console.log('err')
    console.error(e)
  } finally {
    console.log('fin')
  }
}

function Login({ history }: RouteComponentProps) {
  useEffect(()=>{
    (async function(){
      const jwt = await GetCode()
      await GetUserInfo(jwt)
      history.push('/')
    })()
  }, [])
  return (
    <div>
      <div>Loading...💭</div>
    </div>
  )
}
export default Login
