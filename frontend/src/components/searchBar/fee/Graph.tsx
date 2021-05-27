import styled from 'styled-components'
import { useRecoilState } from 'recoil'
import { FeeMin, FeeMax } from '../../../customHook/atoms'

interface IGraphProps {
  data: Map<number, number>
}
interface IStickProps {
  count: number
}

function Graph({ data }: IGraphProps) {
  const dataArr = Array.from(data)
  const [minFeeVal, setMinFeeVal] = useRecoilState(FeeMin)
  const [maxFeeVal, setMaxFeeVal] = useRecoilState(FeeMax)
  setMinFeeVal(dataArr[0][0])
  setMaxFeeVal(dataArr[dataArr.length - 1][0])

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
      <CtrlSlide>
        <MinBtn>⫴</MinBtn>
        <MaxBtn>⫴</MaxBtn>
        <Slide slideLength={dataArr.length}></Slide>
      </CtrlSlide>
      <PriceBox>
        <PriceTag>
          <span>최저요금</span>
          <input value={minFeeVal}></input>
        </PriceTag>
        &nbsp;-&nbsp;
        <PriceTag>
          <span>최고요금</span>
          <input value={maxFeeVal}></input>
        </PriceTag>
      </PriceBox>
    </GraphWrapper>
  )
}
interface ISlide {
  slideLength: number
}
const MinBtn = styled.button`
  border-radius: 30px;
  border: 1px solid ${({ theme }) => theme.color.grey_2};
  position: absolute;
  left: 0%;
`
const MaxBtn = styled.button`
  border-radius: 30px;
  border: 1px solid ${({ theme }) => theme.color.grey_2};
  position: absolute;
  right: 0%;
`
const Slide = styled.div<ISlide>`
  display: flex;
  width: ${(props) => props.slideLength * 55}px;
  height: 3px;
  background-color: red;
`
const CtrlSlide = styled.div`
  display: flex;
  align-items: center;
  position: relative;
  top: -20px;
`
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
