import styled from 'styled-components'
import userImg from '../../../public/user_img.png'
const UserInfo = () => {
 const UserInfoBtn = () =>{

  return(
    <BtnBlock>
    <ImgBlock className="IMG"><img src = {process.env.PUBLIC_URL + '/hamburger_btn.png'} alt='hbg'/> </ImgBlock>
    <ImgBlock className="IMG"><img src={process.env.PUBLIC_URL + '/user_img.png'} alt="user"/> </ImgBlock>
    </BtnBlock>)
 }

  return (
    <><UserInfoBtn/></>
  )
}
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