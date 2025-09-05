<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
    <title>TechShop</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/product-list/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div id="header">
    <div class="header-left">
        <h1><a href="">ＴＥＣＨＳＨＯＰ</a></h1>
    </div>

    <div class="header-center">
        <div class="info-item">
            <i class='bx bx-location-plus'></i>
            <div>
                <span>Thời gian mở cửa</span><br>
                <strong>08:00 - 22:00</strong>
            </div>
        </div>

        <div class="info-item">
            <i class='bx bx-phone'></i>
            <div>
                <span>Liên hệ</span><br>
                <strong>1800.1234</strong>
            </div>
        </div>
    </div>

    <div class="header-right">
        <a href="${pageContext.request.contextPath}/carts">
            <button><i class="bx bx-cart"></i> Giỏ hàng</button>
        </a>
        <button id="open-login"><i class='bx bx-user'></i> Đăng nhập</button>
    </div>
</div>


<div id="header2">
    <nav class="nav-links">
        <a href="">Trang chủ</a>
        <a href="">Giới thiệu</a>
        <a href="">Tin tức</a>
        <a href="">Liên hệ</a>
    </nav>
    <form action="store" method="GET">
        <input type="hidden" name="action" value="search"/>
        <input type="search" name="keyword" placeholder="Sản phẩm bạn muốn tìm?"
               value="${searchKeyword != null ? searchKeyword : ''}"/>
        <button type="submit"><i class='bx bx-search-alt'></i></button>
    </form>
</div>

<div id="sidebar">
    <div id="description">
        <p class="section-title">Mô tả</p>
        <p class="section-content">
            <span>TechShop</span> là cửa hàng chuyên cung cấp các sản phẩm công nghệ chính
            hãng như điện thoại, laptop, linh kiện máy tính và thiết bị điện tử thông minh.
            Với đa dạng mẫu mã, giá cả cạnh tranh và chất lượng đảm bảo, TechShop luôn là điểm đến tin cậy của những
            người yêu công nghệ. Cửa hàng không ngừng cập nhật xu hướng mới để đáp ứng nhu cầu ngày càng cao của khách
            hàng.
        </p>
    </div>

    <div id="categories">
        <p class="section-title">Danh mục sản phẩm</p>
        <ul class="category-list">
            <li>Điện thoại</li>
            <li>Laptop</li>
            <li>Linh kiện máy tính</li>
            <li>Phụ kiện công nghệ</li>
            <li>Đồng hồ điện tử</li>
            <li>Card đồ họa</li>
        </ul>
    </div>

    <div id="new-posts">
        <p class="section-title">Bài viết mới</p>
        <ul class="post-list">
            <li>
                <a href="https://fptshop.com.vn/tin-tuc/for-gamers/laptop-cho-sinh-vien-ky-thuat-duoi-20-trieu-2024-188387"
                   target="_blank">
                    <img class="thumbnail" src="images/lap1.jpg" alt="Laptop">
                    Top 10 laptop cho sinh viên kỹ thuật dưới 20 triệu 2024?
                </a>
            </li>
            <li>
                <a href="https://mytour.vn/vi/blog/bai-viet/so-sanh-chi-tiet-giua-intel-core-i5-1240p-va-ryzen-5-5600h.html"
                   target="_blank">
                    <img class="thumbnail" src="images/chip.jpg" alt="Intel với Ryzen">
                    So sánh Intel Core i5 và Ryzen 5 – Nên chọn gì?
                </a>
            </li>
            <li>
                <a href="https://limosa.vn/card-do-hoa-roi-rtx-3050/">
                    <img class="thumbnail" src="images/rtx3050.jpg" alt="RTX 3050" target="_blank">
                    Card đồ họa RTX 3050 có gì đặc biệt?
                </a>
            </li>
            <li>
                <a href="https://www.tnc.com.vn/huong-dan-cach-phan-biet-laptop-xach-tay-va-laptop-chinh-hang-hp.html?srsltid=AfmBOoqrUlG-R0VsimNvXtVwnLY5vUQSRT53rb1cdG0aeH9A0IgeJaEX"
                   target="_blank">
                    <img class="thumbnail" src="images/lap2.jpg" alt="Laptop chính hãng">
                    Cách phân biệt laptop chính hãng và xách tay?
                </a>
            </li>
        </ul>
    </div>
</div>

<div id="content">
    <div id="carouselExampleIndicators" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/ad1.jpg" class="d-block w-100" alt="ad" style="width: 85%; height: 450px; margin-top: 20px">
            </div>
            <div class="carousel-item">
                <img src="images/ad2.jpg" class="d-block w-100" alt="ad" style="width: 85%; height: 450px; margin-top: 20px">
            </div>
            <div class="carousel-item">
                <img src="images/ad3.jpg" class="d-block w-100" alt="ad" style="width: 85%; height: 450px; margin-top: 20px">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="product-container">
        <c:forEach var="p" items="${listProducts}">
            <div class="product">
                <img src="${p.getImage()}" alt="${p.getName()}" />
                <p><c:out value="${p.getName()}"/></p>
                <p><c:out value="${p.getPrice()}$"/></p>
                <form action="carts" method="GET">
                    <input type="hidden" name="action" value="increase"/>
                    <input type="hidden" name="id" value="${p.getId()}"/>
                    <button type="submit">Thêm vào giỏ hàng</button>
                </form>
            </div>
        </c:forEach>
    </div>
</div>

<div id="content1">
    <div class="info-wrapper">
        <div class="service">
            <h3><i class='bx bx-cog bx-spin'></i> Lắp đặt chuyên nghiệp</h3>
            <ul class="custom-list">
                <li>Cung cấp dịch vụ lắp đặt thiết bị công nghệ tại nhà nhanh chóng và chính xác.</li>
                <li>Đội ngũ kỹ thuật viên giàu kinh nghiệm, tư vấn tận tình.</li>
                <li>Đảm bảo hệ thống vận hành ổn định, tối ưu hiệu suất.</li>
                <li>Tiết kiệm thời gian, phục vụ tận nơi theo yêu cầu.</li>
            </ul>
        </div>

        <div class="map">
            <h3><i class='bx bx-map bx-map-animated'></i> Địa điểm của chúng tôi</h3>
            <iframe
                    src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14977.843902014692!2d105.796105!3d21.029328!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9d7ec5c81f%3A0x0!2zMjEgxJDhuqFpIGNoxrBuZywgSOG6o2kgTuG7mWk!5e0!3m2!1sen!2s!4v1685999999999!5m2!1sen!2s"
                    width="600"
                    height="450"
                    style="border:0;"
                    allowfullscreen=""
                    loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade">
            </iframe>

        </div>

        <div class="contact">
            <h3><i class='bx bx-phone contact-icon'></i> Liên hệ với chúng tôi</h3>
            <p><i class='bx bx-map'></i><span style="font-weight: bold"> Địa chỉ:</span> 123 Đường Công Nghệ, Hà Nội</p>
            <p><i class='bx bx-building'></i><span style="font-weight: bold"> Công ty: </span>Công nghệ Đức Anh</p>
            <p><i class='bx bx-phone'></i><span style="font-weight: bold"> Điện thoại: </span><a href="tel:18001234">1800
                1234</a></p>
            <p><i class='bx bx-envelope'></i><span style="font-weight: bold"> Email:</span><a
                    href="mailto: contact@techshop.com">contact@techshop.com</a></p>
        </div>

    </div>
</div>

<div id="footer">
    <p>Website bán hàng 2025 © Đồ Công Nghệ. Thiết kế bởi DTAnh</p>
</div>

<div id="login-popup" class="popup">
    <div class="popup-content">
        <span class="close-btn">&times;</span>
        <h2>Đăng nhập</h2>
        <form action="login" method="post">
            <input type="text" name="username" placeholder="Tên đăng nhập" required/>
            <input type="password" name="password" placeholder="Mật khẩu" required/>
            <button type="submit">Đăng nhập</button>
        </form>
        <p>Chưa có tài khoản? <a href="#">Đăng ký</a></p>
    </div>
</div>
<script src="${pageContext.request.contextPath}/user/product-list/main.js"></script>
</body>
</html>
