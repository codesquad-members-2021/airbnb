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

  return (
    <GraphWrapper>
      <span>평균 1박 요금은 ₩100,000 입니다.</span>
      <Canvas>
        <>
          {dataArr.map((v, idx) => (
            <Stick key={idx} count={v[1]}>
              {v[1]}
            </Stick>
          ))}
        </>
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
const Stick = styled.div<IStickProps>`
  width: 50px;
  height: ${(props) => props.count * 10}px;
  background-color: red;
`
export default Graph
