import styled from "styled-components";

const ReservationLayout = styled.div`
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    z-index: 99;
    &:before {
        content: "";
        position: fixed;
        top: 0;
        left: 0;
        width:100vw;
        height: 100vh;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: -1;
    }
    & > div {
        position: relative;
        width: 40rem;
        margin: 24vh auto;
        background-color: #fff;
        border-radius: 10px;
    }

`
const ReservationInfoLayout = styled.div`
    padding: 3rem 2rem;

    button {
        width: 100%;
        margin: 1.5rem 0;
        border-radius: 10px;
        background-color: #555;
        color: #fff;
        height: 5rem;
        cursor: pointer;
    }

    .price-and-review {
        margin: 1rem 0;
        display: flex;
        justify-content: space-between;
        .price-per-night {
            font-weight: 700;
            font-size: 2rem;
        }

        .review {
            text-decoration: underline;
            font-size: 1.5rem;
            color: #999;
        }
    }

    .input-information {
        height:10rem;
        border: 1px solid #c5c2c2;
        border-radius: 10px;

        & > div {
            height: 50%;
        }

        .check-in-out-text {
            padding: 10px 1px;
            color: #999;
            font-weight: bold;
        }
        .dates {
            display: flex;
            .check-in {
                border-right: 1px solid #c5c2c2;
            }

            & > div {
                width: 50%;
                padding: 1rem;
            }
        }

        .guest-number {
            border-top: 1px solid #c5c2c2;

            & > div {
                padding: 1rem;
            }

            .input-guest-number {
                padding-top: 0;
            }
        }
    }

    .notification {
        text-align: center;
        font-size: 1.2rem;
        color: #a09e9e;
    }

    .price-detail {
        margin: 2rem 0;
        border-bottom: 1px solid #dddbdb;
        & > div {
            display: flex;
            justify-content: space-between;
            font-size: 1.5rem;
            color: #555;
            padding: 0.5rem;
        }
    }

    .price-total {
        display: flex;
        justify-content: space-between;
        font-size: 1.5rem;
        font-weight: 700;
    }
`
export { ReservationLayout, ReservationInfoLayout };