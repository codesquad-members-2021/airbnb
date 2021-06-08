import { useRef } from 'react'
import styled from 'styled-components'
import { useHistory } from 'react-router-dom'
import { useRecoilState } from 'recoil'
import { Login } from '../../customHook/atoms'
import useModalCtrl from '../../customHook/useModalCtrlArray'

function UserInfo() {
  const userInfoBtn = useRef<HTMLDivElement>(null)
  const userInfoModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({
    toggle: [userInfoBtn],
    modal: userInfoModal,
    init: false,
  })

  let userPhoto: string
  const [LoginState, setLoginState] = useRecoilState(Login)
  const isLogin = localStorage.getItem('isLogin')
  let avatarUrl = localStorage.getItem('avatar_url')
  let id = localStorage.getItem('ID')
  if (avatarUrl !== null) userPhoto = avatarUrl

  if (isLogin === 'true') setLoginState(true)

  const IMG = () => {
    return (
      <div>
        <img
          src={process.env.PUBLIC_URL + '/hamburger_btn.png'}
          alt='hbgBtn'
          width='27'
          height='27'
        />
        {LoginState ? (
          <img src={userPhoto} alt='user' width='27' height='27' />
        ) : (
          <img src={process.env.PUBLIC_URL + '/user_img.png'} alt='user' width='27' height='27' />
        )}
      </div>
    )
  }

  const LoginMenu = () => {
    const style = { textDecoration: 'none', color: 'black' }
    return (
      <Menu>
        <a
          href='https://github.com/login/oauth/authorize?client_id=4e0168ba02f62f435d04'
          style={style}
        >
          로그인
        </a>
      </Menu>
    )
  }

  const UserManageMenu = () => {
    const history = useHistory()
    const handleClick = () => {
      localStorage.setItem('isLogin', 'false')
      localStorage.removeItem('ID')
      localStorage.removeItem('email')
      localStorage.removeItem('avatar_url')
      setLoginState(false)
      history.push('/')
    }
    return (
      <>
        <Menu>{id} 하이 ~ </Menu>
        <Menu>위시리스트 💜</Menu>
        <Menu>계정관리</Menu>
        <Menu onClick={handleClick}>로그아웃</Menu>
      </>
    )
  }
  const HoverMenu = () => {
    return (
      <>
        <MenuBlock ref={userInfoModal}>{LoginState ? <UserManageMenu /> : <LoginMenu />}</MenuBlock>
      </>
    )
  }

  return (
    <>
      <BtnBlock ref={userInfoBtn}>
        <IMG />
      </BtnBlock>
      {open && <HoverMenu />}
    </>
  )
}

const Menu = styled.div`
  font-size: ${(props) => props.theme.fontSize.sm};
  padding: 20px 0;
  cursor: pointer;
`
const MenuBlock = styled.div`
  width: 200px;
  padding: 32px;
  background-color: ${(props) => props.theme.color.white};
  z-index: 9999;
  position: absolute;
  left: 1140px;
  top: 75px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 10px;
`
const BtnBlock = styled.div`
  width: 76px;
  height: 40px;
  background-color: ${(props) => props.theme.color.white};
  border: 1px solid ${(props) => props.theme.color.grey_2};
  border-radius: 30px;
  display: flex;
  align-items: center;
  justify-content: space-around;
`
export default UserInfo
