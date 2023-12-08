<div class="grid-cols-1 sm:grid md:grid-cols-4 ">
    {{foreach menuPublic}}
        <!-- Card -->
        <div class="mx-3 mt-6 flex flex-col rounded-lg border-2 border-danger bg-slate-50 shadow-xl dark:bg-neutral-700 text-center sm:shrink-0 sm:grow sm:basis-0">

            <a href="">
                <img class="rounded-t-lg min-h-[12rem] max-h-[12rem] min-w-[300px]" src="{{image}}" alt="Imagen del producto" />
            </a>

            <!-- Card header -->
            <div class="border-b-2 border-neutral-100 px-6 py-4 dark:border-neutral-500">
                <h5 class="flex items-center justify-center text-neutral-500 dark:text-neutral-300">
                        <span class="mr-2 text-green-700 font-bold">
                            L. {{price}}.00
                        </span>
                    <span class="inline-block whitespace-nowrap rounded-[0.27rem] bg-blue-100 px-[0.65em] pb-[0.25em] pt-[0.35em] text-center align-baseline text-[0.75em] font-bold leading-none text-red-700">
                            {{category}}
                        </span>
                </h5>
            </div>

            <!-- Card body -->
            <div class="p-6">

                <!-- Title -->
                <h5 class="mb-2 min-h-[80px] text-xl font-bold tracking-wide text-neutral-800 dark:text-neutral-50">
                    {{name}}
                </h5>

                {{if ~canAddCart}}
                <!-- Button cart-->
                <button href="#" class="inline-block rounded-full bg-danger px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#dc4c64] transition duration-150 ease-in-out hover:bg-danger-600 hover:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] focus:bg-danger-600 focus:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] focus:outline-none focus:ring-0 active:bg-danger-700 active:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(220,76,100,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)]"
                        data-te-ripple-init id="cartProId{{idProducts}}" onclick="addToCart('{{name}}', {{price}}, {{idProducts}})">
                    Añadir al carrito
                </button>
                {{endif ~canAddCart}}

                <!--Button trigger vertically centered scrollable modal-->
                <a href="#" class="inline-block rounded-full bg-success px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#14a44d] transition duration-150 ease-in-out hover:bg-success-600 hover:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] focus:bg-success-600 focus:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] focus:outline-none focus:ring-0 active:bg-success-700 active:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(20,164,77,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)]" data-te-toggle="modal" data-te-target="#exampleModal{{idProducts}}" data-te-ripple-init data-te-ripple-color="light">
                    Ver
                </a>


                <!--Verically centered scrollable modal-->
                <div data-te-modal-init class="fixed left-0 top-0 z-[1055] hidden h-full w-full overflow-y-auto overflow-x-hidden outline-none" id="exampleModal{{idProducts}}" tabindex="-1" aria-labelledby="exampleModal{{idProducts}}" aria-modal="true" role="dialog">

                    <div data-te-modal-dialog-ref class="pointer-events-none relative flex min-h-[calc(100%-1rem)] w-auto translate-y-[-50px] items-center opacity-0 transition-all duration-300 ease-in-out min-[576px]:mx-auto min-[576px]:mt-7 min-[576px]:min-h-[calc(100%-3.5rem)] min-[576px]:max-w-[500px]">
                        <div class="pointer-events-auto relative flex w-full flex-col rounded-md border-none bg-white bg-clip-padding text-current shadow-lg outline-none dark:bg-neutral-600">
                            <div class="flex flex-shrink-0 items-center justify-between rounded-t-md border-b-2 border-neutral-100 border-opacity-100 p-4 dark:border-opacity-50">
                                <!--Modal title-->
                                <h5 class="text-xl font-medium leading-normal text-neutral-800 dark:text-neutral-200" id="exampleModalCenteredScrollableLabel">
                                    {{name}}
                                </h5>
                                <!--Close button-->
                                <button type="button" class="box-content rounded-none border-none hover:no-underline hover:opacity-75 focus:opacity-100 focus:shadow-none focus:outline-none" data-te-modal-dismiss aria-label="Close">
                                    <svg xmlns="http://www.w3.org/2000/svg" height="1.5em" viewBox="0 0 384 512">
                                        <style>
                                            svg {
                                                fill: #dc4c64
                                            }
                                        </style>
                                        <path d="M342.6 150.6c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L192 210.7 86.6 105.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L146.7 256 41.4 361.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0L192 301.3 297.4 406.6c12.5 12.5 32.8 12.5 45.3 0s12.5-32.8 0-45.3L237.3 256 342.6 150.6z" />
                                    </svg>
                                </button>
                            </div>

                            <!--Modal body-->
                            <div class="relative p-4">
                                <!-- Card image -->
                                <a href="#!">
                                    <img class="inline-block rounded-t-lg min-h-[12rem] max-h-[12rem] min-w-[300px]" src="{{image}}" alt="Imagen de producto" />
                                </a>

                                <!-- Card header -->
                                <div class="border-b-2 border-neutral-100 px-6 py-4 dark:border-neutral-500">
                                    <h5 class="flex items-center justify-center text-neutral-500 dark:text-neutral-300">
                            <span class="mr-2 text-green-700 font-bold">
                                 L. {{price}}.00
                            </span>
                                        <span class="inline-block whitespace-nowrap rounded-[0.27rem] bg-blue-100 px-[0.65em] pb-[0.25em] pt-[0.35em] text-center align-baseline text-[0.75em] font-bold leading-none text-red-700">
                                {{category}}
                            </span>
                                    </h5>
                                </div>
                                <p>
                                    <strong>Descripción: </strong> {{description}}<br /><br />
                                    <strong>Ingredientes: </strong> {{ingredients}}
                                </p>
                                <br /><br />
                                <p>¡Ordena el tuyo ya!.</p>
                            </div>

                            <!--Modal footer-->
                            <div class="flex flex-shrink-0 flex-wrap items-center justify-end rounded-b-md border-t-2 border-neutral-100 border-opacity-100 p-4 dark:border-opacity-50">
                                <button type="button" class="inline-block rounded-full bg-danger px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#dc4c64] transition duration-150 ease-in-out hover:bg-danger-600 hover:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] focus:bg-danger-600 focus:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] focus:outline-none focus:ring-0 active:bg-danger-700 active:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(220,76,100,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)]" data-te-ripple-init data-te-modal-dismiss data-te-ripple-color="light">
                                    Cerrar
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Card -->
    {{endfor menuPublic}}
</div>

