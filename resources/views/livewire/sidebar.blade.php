<main class="py-4 row">
    <div id="sidebar" class="d-flex flex-column col-2 flex-shrink-0 p-3 bg-light" >
        <div class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
            <i class="bi-clipboard-data" style="font-size: 1.5rem;"></i>
            <span class="px-3 pt-2 h4">XCR12</span> 
        </div>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
            <li>
                <a href="{{route('main')}}" class="{{ Request::is('main') ? 'active' : '' }} nav-link link-dark a-sidebar " >
                    <i class="bi-house px-2" style="font-size: 1.5rem;"></i>
                    <span class="pt-2 h5">Home</span> 
                </a>
            </li>
            <li>
                <a href="{{route('dashboard')}}" class="{{ Request::is('dashboard') ? 'active' : '' }} nav-link link-dark a-sidebar " >
                    <i class="bi-speedometer2 px-2" style="font-size: 1.5rem;"></i>
                    <span class="pt-2 h5">Pulpit zdalny</span> 
                </a>
            </li>
            @if(Request::is('dashboard','dashboard/andrychow','dashboard/bartoszyce','dashboard/nidzica','dashboard/ilawa','dashboard/zk-sztum','dashboard/zk-ilawa'))
            <div class="container">
                <ul class="nav nav-pills flex-column mb-auto">
                    <li>
                        <a href="{{route('andrychow')}}" class="nav-link link-dark a-sidebar {{ Request::is('dashboard/andrychow') ? 'active' : '' }}" >
                            <i class="bi-buildings px-2" style="font-size: 1.5rem;"></i>
                            <span class="pt-2 h5">Andrychów</span> 
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link link-dark a-sidebar {{ Request::is('#') ? 'active' : '' }}" >
                            <i class="bi-buildings px-2" style="font-size: 1.5rem;"></i>
                            <span class="pt-2 h5">Bartoszyce</span> 
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link link-dark a-sidebar {{ Request::is('#') ? 'active' : '' }}" >
                            <i class="bi-buildings px-2" style="font-size: 1.5rem;"></i>
                            <span class="pt-2 h5">Nidzica</span> 
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link link-dark a-sidebar {{ Request::is('#') ? 'active' : '' }}" >
                            <i class="bi-buildings px-2" style="font-size: 1.5rem;"></i>
                            <span class="pt-2 h5">Iława</span> 
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link link-dark a-sidebar {{ Request::is('#') ? 'active' : '' }}" >
                            <i class="bi-buildings px-2" style="font-size: 1.5rem;"></i>
                            <span class="pt-2 h5">ZK-Sztum</span> 
                        </a>
                    </li>
                    <li>
                        <a href="#" class="nav-link link-dark a-sidebar {{ Request::is('#') ? 'active' : '' }}" >
                            <i class="bi-buildings px-2" style="font-size: 1.5rem;"></i>
                            <span class="pt-2 h5">ZK-Iława</span> 
                        </a>
                    </li>
                </ul>                    
            </div>
            @endif
            <li>
                <a href="#" class="nav-link link-dark a-sidebar {{ Request::is('Orders') ? 'active' : '' }}">
                    <i class="bi-table px-2" style="font-size: 1.5rem;"></i>
                    <span class="pt-2 h5">Orders</span>
                </a>
            </li>
            <li>
                <a href="#" class="nav-link link-dark a-sidebar {{ Request::is('Products') ? 'active' : '' }}">
                    <i class="bi-grid px-2" style="font-size: 1.5rem;"></i>
                    <span class="pt-2 h5">Products</span>
                </a>
            </li>
            <li>
                <a href="#" class="nav-link link-dark a-sidebar {{ Request::is('Customers') ? 'active' : '' }}">
                    <i class="bi-person-circle px-2" style="font-size: 1.5rem;"></i>
                    <span class="pt-2 h5">Customers</span> 
                </a>
            </li>
            <li class="">
                <a href="{{route('upload-plan')}}" class="nav-link link-dark a-sidebar {{ Request::is('upload-plan') ? 'active' : '' }}">
                    <i class="bi-file-earmark-spreadsheet px-2" style="font-size: 1.5rem;"></i>
                    <span class="pt-2 h5">Wczytaj plany</span> 
                </a>
            </li>
        </ul>
        <hr>
    </div>
    <div id='content' class=" container col">
        @yield('content')
    </div>
</main>