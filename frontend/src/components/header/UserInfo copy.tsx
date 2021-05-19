import React, { useState, useEffect, useRef} from 'react'
import styled from 'styled-components'
const HoverMenu = () => {
  return (
   <>
   <MenuBlock className="toggle-menu">
     <Menu>로그인</Menu>
   </MenuBlock>
   </>
   )
}

type refy = HTMLDivElement | undefined

const UserInfo = () => {
  const [open, setOpen] = useState(false)
  useEffect(()=>{
    const handle = ({target}:any):void => {
      // if (toggleUser.current.contains(target)) setOpen(!open)
      if (target.closest('.user-btn'))setOpen((open)=>!open)
      else if (target.closest('.toggle-menu')) setOpen(true)
      else setOpen(false)
    }
    document.addEventListener('click', handle)
    return ()=>{
      document.removeEventListener('click',handle)
    }
  },[])
  return(
    <>
    <BtnBlock className="user-btn">
    
    <ImgBlock className="IMG"><img src = {process.env.PUBLIC_URL + '/hamburger_btn.png'} alt='hbg'/> </ImgBlock>
    <ImgBlock className="IMG"><img src={process.env.PUBLIC_URL + '/user_img.png'} alt="user"/> </ImgBlock>
    </BtnBlock>
    {open && <HoverMenu/>}
    </>
    )
 
}

const Menu = styled.div`
padding: 32px;
font-size: ${props=>props.theme.fontSize.sm}`
const MenuBlock = styled.div`
width: 200px;
height: 87px;
position: absolute;
left: 1140px;
top: 75px;
box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
border-radius: 10px;`
const ImgBlock = styled.div``
const BtnBlock = styled.div`
width: 76px;
height: 40px;
border: 1px solid ${props=>props.theme.color.grey_2};
border-radius: 30px;
display: flex;
align-items: center;
justify-content: space-around;
`
export default UserInfo;