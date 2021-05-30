import styled from 'styled-components'

interface IGraphProps {
  dataArr: Array<number[]>
}
interface IStickProps {
  count: number
}
interface ILength {
  length: number
}

function Graph({ dataArr }: IGraphProps) {
  const averageFee = Math.ceil(
    dataArr.reduce((acc, curr) => (acc = acc + curr[0]), 0) / dataArr.length
  )
  return (
    <GraphWrapper>
      <span>평균 1박 요금은 ₩{averageFee} 입니다.</span>
      <Canvas length={dataArr.length}>
        {dataArr.map((v, idx) => (
          <WholeStick key={idx}>
            <Stick count={v[1]}></Stick>
            <BgStick count={v[1]}></BgStick>
          </WholeStick>
        ))}
      </Canvas>
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
const Canvas = styled.div<ILength>`
  display: flex;
  align-items: flex-end;
  width: ${(props) => props.length * 50}px;
  max-width: 500px;
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
