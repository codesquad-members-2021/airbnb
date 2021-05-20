import styled from 'styled-components'
import Button from '@material-ui/core/Button';
import { FaMapMarkedAlt } from 'react-icons/fa'
import { Modal } from '../../style/BarStyle'
interface IType {
  modalType: string;
  targetPlace: string|null;
  setTargetPlace: any;
  defaultMsg:string;
}
const ModalPlace:React.FunctionComponent<IType> = ({modalType, targetPlace, setTargetPlace, defaultMsg}) =>{

  const locations = ['서울', '경기', '부산', '광주', '대전', '전주', '강원', '제주'];
  const handleClick = (location:string|null) =>{
    setTargetPlace(typeof location === 'string'? location : defaultMsg)
  }

  return(
    <>
      <Modal modalType={modalType}>
      <Button fullWidth onClick={()=>handleClick(null)}><FaMapMarkedAlt/>&nbsp;&nbsp;{defaultMsg}</Button>
      <GridWrapper>
        {locations.map((location,idx)=>
        <Button key={'location'+idx} onClick={()=>handleClick(location)}>{location}</Button>)}
      </GridWrapper>
      </Modal>
    </>
  )
}
const Xbtn = styled.div`
`
const GridWrapper =styled.div`
display:grid;
grid-template-rows: repeat(4, 1fr);
grid-template-columns: repeat(2, 1fr);`

export default ModalPlace