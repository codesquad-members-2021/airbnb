import styled from 'styled-components'
import Slider from './Slider'
interface IGraphProps {
  data: Map<number, number>
}
interface IStickProps {
  count: number
}

function Graph({ data }: IGraphProps) {
  const dataArr = Array.from(data)
  const averageFee = Math.ceil(
    dataArr.reduce((acc, curr) => (acc = acc + curr[0]), 0) / dataArr.length
  )
  return (
    <GraphWrapper>
      <span>평균 1박 요금은 ₩{averageFee} 입니다.</span>
      <Canvas>
        {dataArr.map((v, idx) => (
          <WholeStick key={idx}>
            <Stick className='stick' count={v[1]}></Stick>
            <BgStick className='bg' count={v[1]}></BgStick>
          </WholeStick>
        ))}
      </Canvas>
      <Slider data={dataArr} />
    </GraphWrapper>
  )
}

const GraphWrapper = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 40px 0;
  & > span {
    fontsize: ${({ theme }) => theme.fontSize.super_sm};
    color: ${({ theme }) => theme.color.grey_4};
  }
`
const Canvas = styled.div`
  display: flex;
  padding: 20px;
  align-items: flex-end;
`
const WholeStick = styled.div`
  height: 265px;
  width: 50px;
  display: flex;
  flex-direction: column-reverse;
`
const Stick = styled.div<IStickProps>`
  height: ${(props) => props.count * 10}px;
  background-color: red;
`
const BgStick = styled.div<IStickProps>`
  height: ${(props) => 260 - props.count * 10}px;
  z-index: 3;
  background-color: ${({ theme }) => theme.color.white};
`
export default Graph
