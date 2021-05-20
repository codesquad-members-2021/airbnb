import styled from 'styled-components'
import Button from '@material-ui/core/Button';
import { FaMapMarkedAlt } from 'react-icons/fa'
import { Modal } from '../../style/BarStyle'
interface IType {
  modalType: string;
  targetPlace: string|HTMLButtonElement;
  setTargetPlace: any;
}
const ModalPlace:React.FunctionComponent<IType> = ({modalType, targetPlace, setTargetPlace}) =>{

  const locations = ['서울', '경기', '부산', '광주', '대전', '전주', '강원', '제주'];
  
  const handleClick = (location:string|null) =>{
    setTargetPlace(typeof location === 'string'? location : '가까운 여행지 둘러보기')
  }
  return(
    <>
      <Modal modalType={modalType}>
      <Button fullWidth onClick={()=>handleClick(null)}><FaMapMarkedAlt/>&nbsp;&nbsp;가까운 여행지 둘러보기</Button>
      <GridWrapper>
        {locations.map((location,idx)=>
        <Button key={'location'+idx} onClick={()=>handleClick(location)}>{location}</Button>)}
      </GridWrapper>
      </Modal>
    </>
  )
}
const GridWrapper =styled.div`
display:grid;
grid-template-rows: repeat(4, 1fr);
grid-template-columns: repeat(2, 1fr);`


export default ModalPlace