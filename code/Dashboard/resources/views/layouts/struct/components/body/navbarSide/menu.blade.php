<!-- Percursos -->
<li class="nav-item">
    <a href="{{ route('dashboard') }}" class="nav-link"><i class="nav-icon fas fa-route"></i> <p>Percursos</p></a>
</li>


<!-- QR Codes -->
<li class="nav-item">
    <a href="#" class="nav-link"><i class="nav-icon fas fa-qrcode"></i> <p>QR Codes</p></a>
</li>


<!-- Definicoes -->
<li class="nav-item">
    <a href="#" class="nav-link"><i class="nav-icon fas fa-tachometer-alt"></i> <p>Definições <i class="right fas fa-angle-left"></i></p></a>

    <ul class="nav nav-treeview">
        <li class="nav-item"><a href="#" class="nav-link"><i class="nav-icon far fa-circle"></i> <p>Fauna / Flora</p></a></li>
        <li class="nav-item"><a href="#" class="nav-link"><i class="nav-icon fas fa-crow"></i> <p>Fauna</p></a></li>
        <li class="nav-item"><a href="#" class="nav-link"><i class="nav-icon fas fa-tree"></i> <p>Flora</p></a></li>

        <li class="nav-item"><a href="#" class="nav-link"><i class="nav-icon fas fa-route"></i> <p>Percursos<i class="right fas fa-angle-left"></i></p></a>
            <ul class="nav nav-treeview">
                <li class="nav-item"><a href="#" class="nav-link"><i class="nav-icon fas fa-info-circle"></i> <p>Informações Adicionais</p></a></li>
                <li class="nav-item"><a href="#" class="nav-link"><i class="nav-icon fas fa-map-marker-alt"></i> <p>P.O.I.</p></a></li>
            </ul>
        </li>

        <li class="nav-item"><a href="{{ route('users.index') }}" class="nav-link"><i class="nav-icon fas fa-users"></i> <p>Utilizadores</p></a></li>



        <li class="nav-item"><a href="#" class="nav-link"><i class="nav-icon far fa-circle"></i> <p>demo only!!</p></a></li>
    </ul>

</li><!-- ./definicoes -->
