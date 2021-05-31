import styled from 'styled-components'
import { Modal } from '../../../style/BarStyle'
import { RecoilValueGroup } from '../../../customHook/atoms'
import useAxios from '../../../customHook/useAxios'
import { getFeeData } from '../../../customHook/axiosAPI'
import Graph from './Graph'
import Slider from './Slider'

interface IFeeType {
  modalType: string
}

const filteredFee = (fee: Array<number>): Map<number, number> => {
  fee.sort((a, b) => a - b)
  const filtered = fee.reduce((acc, curr) => {
    acc.get(curr) ? acc.set(curr, acc.get(curr) + 1) : acc.set(curr, 1)
    return acc
  }, new Map())
  return filtered
}

function ModalFee({ modalType }: IFeeType) {
  const { placeToSearch, checkIn, checkOut } = RecoilValueGroup()
  const { state } = useAxios(() => getFeeData(placeToSearch, checkIn, checkOut))

  const { loading, error, data } = state
  if (loading) return <div>Loading...💭</div>
  if (error) return <div>에러발생</div>
  if (!data) return null
  const result = filteredFee(data.prices)
  const dataArr = Array.from(result)
  return (
    <>
      <Modal modalType={modalType}>
        <FeeContents className='contents'>
          <Graph dataArr={dataArr} />
          <Slider dataArr={dataArr} />
        </FeeContents>
      </Modal>
    </>
  )
}

const FeeContents = styled.div``
export default ModalFee
