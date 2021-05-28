import styled from 'styled-components'
import { useRecoilState } from 'recoil'
import { personnelAudult, personnelChild, personnelBaby } from '../../../customHook/atoms'
import { Modal } from '../../../style/BarStyle'
import { IModalPropType } from '../../../Interface'
interface ClickProps {
  num?: number
  disabled?: any
}
const ModalPersonnel = ({ modalType }: IModalPropType) => {
  const [adult, setAudult] = useRecoilState(personnelAudult)
  const [child, setChild] = useRecoilState(personnelChild)
  const [baby, setBaby] = useRecoilState(personnelBaby)
  const datas = [
    ['성인', '만 13세 이상', adult],
    ['어린이', '만 2~12세 이상', child],
    ['유아', '만 2세 미만', baby],
  ]
  const handleClick = (num: number, personnelType: string): void => {
    if (personnelType === datas[0][0]) setAudult((adult) => adult + num)
    if (personnelType === datas[1][0]) setChild((child) => child + num)
    if (personnelType === datas[2][0]) setBaby((baby) => baby + num)
    if (personnelType === datas[2][0] && adult === 0) setAudult(1)
    if (personnelType === datas[1][0] && adult === 0) setAudult(1)
  }
  const check = (btnType: number, num: number) => {
    if (btnType === -1 && num === 0) return true
    if (btnType === 1 && num === 8) return true
    return false
  }

  return (
    <>
      <Modal modalType={modalType}>
        <InnerWrapper>
          {datas.map((data, idx) => (
            <Menu key={idx}>
              <div>
                {data[0]}
                <SubDesc>{data[1]}</SubDesc>
              </div>
              <FlexBox>
                <Btn
                  disabled={check(-1, data[2] as number)}
                  onClick={() => handleClick(-1, data[0] as string)}
                >
                  -
                </Btn>
                {data[2]}
                <Btn
                  onClick={() => handleClick(+1, data[0] as string)}
                  disabled={check(1, data[2] as number)}
                >
                  +
                </Btn>
              </FlexBox>
            </Menu>
          ))}
        </InnerWrapper>
      </Modal>
    </>
  )
}

const FlexBox = styled.div`
  display: flex;
  justify-content: space-evenly;
  width: 116px;
`
const Btn = styled.button<ClickProps>`
  cursor: pointer;
  width: 30px;
  height: 30px;
  font-weight: ${({ theme }) => theme.fontWeight.w1};
  font-size: ${({ theme }) => theme.fontSize.x_lg};
  color: ${({ theme }) => theme.color.grey_2};
  border: 1px solid ${({ theme }) => theme.color.grey_2};
  border-radius: 50px;
  display: flex;
  align-items: flex-end;
  justify-content: center;
`
const InnerWrapper = styled.div`
  padding: 10px 64px;
`
const Menu = styled.div`
  display: flex;
  justify-content: space-between;
  padding: 32px;
  font-size: ${({ theme }) => theme.fontSize.sm};
  font-weight: ${({ theme }) => theme.fontWeight.w2};
  border-bottom: 1px solid ${({ theme }) => theme.color.grey_2};
  &:last-child {
    border-bottom: none;
  }
`
const SubDesc = styled.div`
  font-size: ${(props) => props.theme.fontSize.super_sm};
  font-weight: ${(props) => props.theme.fontWeight.w1};
  color: ${(props) => props.theme.color.grey_3};
`
export default ModalPersonnel
