import styled from 'styled-components'
interface IGraphProps {
  data: Map<number, number>
}
interface IStickProps {
  count: number
}

function Graph({ data }: IGraphProps) {
  return (
    <GraphWrapper>
      <span>평균 1박 요금은 ₩100,000 입니다.</span>
      <Canvas>
        {Array.from(data).map((v, idx) => (
          <Stick key={idx} count={v[1]}>
            {v[1]}
          </Stick>
        ))}
      </Canvas>
      <PriceBox>
        <PriceTag>
          <span>최저요금</span>
          <input></input>
        </PriceTag>
        &nbsp;-&nbsp;
        <PriceTag>
          <span>최고요금</span>
          <input></input>
        </PriceTag>
      </PriceBox>
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
const PriceBox = styled.div`
  display: flex;
  align-items: center;
`
const PriceTag = styled.div`
  display: flex;
  flex-direction: column;
  border: 1px solid ${({ theme }) => theme.color.grey_2};
  border-radius: 10px;
  padding: 0 10px;
  span {
    display: inline-block;
    font-size: ${({ theme }) => theme.fontSize.x_sm};
    color: ${({ theme }) => theme.color.grey_3};
  }
  input {
    width: 100px;
    height: 30px;
    border: none;
    &:focus {
      outline: none;
    }
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
